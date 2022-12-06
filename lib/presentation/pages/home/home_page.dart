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
    String? email;
    String? name;
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      if (currentUser.email != null) {
        email = currentUser.email;
      }
      if (currentUser.displayName != null) {
        name = currentUser.displayName;
      }
    }
    String userName = email != null ? email.split('@')[0] : name ?? '';

    return BlocBuilder<CharacterBloc, CharacterState>(
      builder: (context, state) {
        return DefaultBody(
          back: false,
          showProfile: userName,
          searchTitle: CustomTextField(
            width: context.mediaQuery.size.width / 2,
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
              error: () => const Error(),
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
    return GridView.count(
      mainAxisSpacing: 50,
      crossAxisCount: 2,
      childAspectRatio: 4,
      shrinkWrap: true,
      children: List.generate(currentResults.length, (index) {
        final character = currentResults[index];
        return CharacterInfoCard(character: character);
      }),
    );
  }
}

class Error extends StatelessWidget {
  const Error({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CustomText(text: ConstantText.error),
        ],
      ),
    );
  }
}
