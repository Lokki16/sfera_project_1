import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CharacterModel? currentCharacter;
  List<CharacterResultsModel> currentResults = [];
  int currentPage = 1;
  String currentSearch = '';

  @override
  void initState() {
    if (currentResults.isEmpty) {
      context
          .read<CharacterBloc>()
          .add(const CharacterEvent.fetch(name: '', page: 1));
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      child:
          BlocBuilder<CharacterBloc, CharacterState>(builder: (context, state) {
        return Column(
          children: [
            CustomTextField(
                hintText: 'Search Name',
                iCon: const Icon(Icons.search, color: Colors.white),
                onChanged: (value) {
                  currentPage = 1;
                  currentResults = [];
                  currentSearch = value;
                  context.read<CharacterBloc>().add(
                      CharacterEvent.fetch(name: value, page: currentPage));
                }),
            Expanded(
              child: state.when(
                loading: () => const Loading(),
                loaded: (characterLoaded) {
                  currentCharacter = characterLoaded;
                  currentResults = currentCharacter!.results;
                  return currentResults.isNotEmpty
                      ? Loaded(currentResults: currentResults)
                      : const SizedBox.shrink();
                },
                error: () => const CustomText(text: 'Error'),
              ),
            ),
          ],
        );
      }),
    );
  }
}

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpacedColumn(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        space: 5,
        children: [
          CircularProgressIndicator(strokeWidth: 2.w),
          const CustomText(text: 'Loading...'),
        ],
      ),
    );
  }
}

class Loaded extends StatelessWidget {
  final List<CharacterResultsModel> currentResults;

  const Loaded({super.key, required this.currentResults});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: currentResults.length,
      separatorBuilder: (_, index) => SizedBox(height: 5.h),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final character = currentResults[index];
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 16.h),
          child: ListTile(
            title: CustomText(
              text: character.name,
              textStyle: ThemeTextStyle.test.apply(color: ThemeColors.black),
            ),
          ),
        );
      },
    );
  }
}
