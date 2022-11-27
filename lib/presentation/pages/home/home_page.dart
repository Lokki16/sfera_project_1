import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CharacterResultsModel> currentResults = [];

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
    return BlocBuilder<CharacterBloc, CharacterState>(
      builder: (context, state) {
        return DefaultBody(
          back: false,
          searchTitle: CustomTextField(
            width: context.mediaQuery.size.width / 1.5,
            height: 52,
            icon: Icons.search,
            onChanged: (value) {
              currentResults = [];
              context
                  .read<CharacterBloc>()
                  .add(CharacterEvent.fetch(name: value, page: 1));
            },
          ),
          child: Expanded(
            child: state.when(
              loading: () => const Loading(),
              loaded: (characterLoaded) {
                currentResults = characterLoaded.results;
                return currentResults.isNotEmpty
                    ? Loaded(currentResults: currentResults)
                    : const SizedBox.shrink();
              },
              error: () => const CustomText(text: ConstantText.error),
            ),
          ),
        );
      },
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
          const CustomText(text: ConstantText.loading),
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
          child: ListTile(title: CharacterInfoCard(character: character)),
        );
      },
    );
  }
}
