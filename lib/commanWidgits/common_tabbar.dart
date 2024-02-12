import '../service/import_file.dart';

class CommonTabBar extends StatelessWidget {
  const CommonTabBar({
    super.key,
    this.title1,
    this.title2,
    this.title3,
    this.tab1,
    this.tab2,
    this.tab3,
  });

  final String? title1;
  final String? title2;
  final String? title3;
  final Widget? tab1;
  final Widget? tab2;
  final Widget? tab3;

  @override
  Widget build(BuildContext context) {
    return TabBar(
        // unselectedLabelColor: Colors.redAccent,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: ColorUtils.appGrediant),
        unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 15, color: ColorUtils.black),
        labelStyle: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
        tabs: [
          Tab(
            child: Container(
              alignment: Alignment.center,
              height: 36.h,
              width: 107.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(title1 ?? ''),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              height: 36.h,
              width: 107.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(title2 ?? ''),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              height: 36.h,
              width: 107.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(title3 ?? ''),
            ),
          ),
        ]);
  }
}
