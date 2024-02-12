import '../service/import_file.dart';
import '../utils/assets/common_assets.dart';
import '../view/approved_product_listt.dart';
import 'Custom_text.dart';

class CommonListTile extends StatelessWidget {
  const CommonListTile(
      {super.key,
      required this.tital,
      required this.subtital,
      required this.icon,
      required this.image});

  final String? tital;
  final String? subtital;
  final String? icon;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 90.w,
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  blurRadius: 1,
                  spreadRadius: 1,
                  color: Colors.grey.withOpacity(0.5)),
            ]),
        child: ListTile(
          leading: LocalAssets(
            imagePath: image ?? '',
          ),
          title: CustomText(
            tital ?? '',
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize: 18,
          ),
          subtitle: CustomText(
            subtital ?? '',
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          trailing: LocalAssets(
            height: 30.w,
            scaleSize: 5,
            imagePath: icon ?? '',
          ),
        ),
      ),
    );
  }
}
