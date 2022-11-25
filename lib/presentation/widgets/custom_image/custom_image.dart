import 'package:sfera_project_1/presentation/template/template.dart';

class CustomImage extends StatelessWidget {
  final String image;
  final double width;
  final double height;

  const CustomImage({
    Key? key,
    required this.image,
    this.width = 124,
    this.height = 124,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: CachedNetworkImage(
        imageUrl: image,
        placeholder: (context, url) =>
            CircularProgressIndicator(strokeWidth: 2.h),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
