import 'package:sfera_project_1/presentation/template/template.dart';

class CharacterInfoCard extends StatelessWidget {
  final CharacterResultsModel character;

  const CharacterInfoCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImage(image: character.image, width: 50, height: 100),
        SpacedColumn(
          space: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(text: character.name),
            CharacterStatus(status: character.status),
            SpacedRow(
              space: 30,
              children: [
                SpacedColumn(
                  space: 5,
                  children: [
                    const CustomText(text: ConstantText.species),
                    CustomText(text: character.species),
                  ],
                ),
                SpacedColumn(
                  space: 5,
                  children: [
                    const CustomText(text: ConstantText.gender),
                    CustomText(text: character.gender),
                  ],
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}

class CharacterStatus extends StatelessWidget {
  final String status;

  const CharacterStatus({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return SpacedRow(
      space: 5,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomIcon(
          icon: Icons.circle,
          size: 20,
          color: status == 'Alive'
              ? ThemeColors.green
              : status == 'Dead'
                  ? ThemeColors.red
                  : ThemeColors.white,
        ),
        CustomText(text: capitalize(status)),
      ],
    );
  }
}
