import '../service/import_file.dart';

class CommonGridView extends StatelessWidget {
  const CommonGridView(
      {super.key,
      required this.subtital,
      required this.tital,
      required this.image});

  final String tital;
  final String subtital;

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: ColorUtils.grey),
      child: Column(
        children: [
          Container(
            height: 80.w,
            width: 100.w,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              tital,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: ColorUtils.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 12),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              '\$${subtital}',
              style: TextStyle(
                  color: ColorUtils.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
