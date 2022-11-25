import 'package:sfera_project_1/presentation/template/template.dart';

class CharacterInfoCard extends StatelessWidget {
  final CharacterResultsModel character;

  const CharacterInfoCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r)),
      child: Row(
        children: [
          CustomImage(image: character.image),
          Column(
            children: [
              CustomText(text: character.name),
              SizedBox(height: 3.h),
              CharacterStatus(status: character.status),
              SizedBox(height: 5.h),
              Row(
                children: [
                  SpacedColumn(
                    space: 5,
                    children: [
                      const CustomText(text: 'Species:'),
                      CustomText(text: character.species),
                    ],
                  ),
                  SpacedColumn(
                    space: 5,
                    children: [
                      const CustomText(text: 'Gender:'),
                      CustomText(text: character.gender),
                    ],
                  ),
                ],
              )
            ],
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
        Icon(
          Icons.circle,
          size: 11.h,
          color: status == 'Alive'
              ? Colors.green
              : status == 'Dead'
                  ? Colors.red
                  : ThemeColors.white,
        ),
        SizedBox(width: 6.w),
        CustomText(text: capitalize(status)),
      ],
    );
  }
}
