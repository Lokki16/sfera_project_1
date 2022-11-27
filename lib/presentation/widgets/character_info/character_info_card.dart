import 'package:sfera_project_1/presentation/template/template.dart';

class CharacterInfoCard extends StatelessWidget {
  final CharacterResultsModel character;

  const CharacterInfoCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: CustomImage(image: character.image)),
          Expanded(
            child: Column(
              children: [
                CustomText(text: character.name),
                SizedBox(height: 3.h),
                CharacterStatus(status: character.status),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            ),
          )
        ],
      ),
    );
  }
}

class CharacterStatus extends StatelessWidget {
  final String status;

  const CharacterStatus({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Row(
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
        SizedBox(width: 6.w),
        CustomText(text: capitalize(status)),
      ],
    );
  }
}
