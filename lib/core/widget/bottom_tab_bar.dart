import 'package:expenditure_app/constants/theme/color.dart';
import 'package:expenditure_app/constants/theme/text_theme.dart';
import 'package:expenditure_app/core/widget/global_background.dart';
import 'package:expenditure_app/pages/add/add_page.dart';
import 'package:expenditure_app/pages/analysis/analysis_page.dart';
import 'package:expenditure_app/pages/wallet/wallet_page.dart';
import 'package:expenditure_app/pages/home/home_page.dart';
import 'package:expenditure_app/pages/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({super.key});

  @override
  _BottomTabBarState createState() => _BottomTabBarState();
}

List<IconData> navIcons = [
  Icons.home,
  Icons.wallet,
  Icons.add,
  Icons.analytics_rounded,
  Icons.person
];

List<Widget> pages = [
  const HomePage(),
  const WalletPage(),
  const AddPage(),
  const AnalysisPage(),
  const ProfilePage()
];

int selectedIndex = 0;

class _BottomTabBarState extends State<BottomTabBar> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return GlobalBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: IconThemeData(color: AppColor.black),
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Lottie.asset("assets/animation/logo2.json", height: 50),
            )
          ],
        ),
        drawer: SizedBox(
          height: 600,
          child: Drawer(
            backgroundColor: Colors.indigo.shade100,
            width: 270,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppTextTheme.medium("text", context),
                AppTextTheme.medium("text", context),
                AppTextTheme.medium("text", context),
                AppTextTheme.medium("text", context),
                AppTextTheme.medium("text", context),
                AppTextTheme.medium("text", context),
                AppTextTheme.medium("text", context),
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: pages,
              onPageChanged: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
            Align(alignment: Alignment.bottomCenter, child: _navBar()),
          ],
        ),
      ),
    );
  }

  Widget _navBar() {
    return Container(
      height: 65,
      width: 300,
      margin: const EdgeInsets.only(right: 24, left: 24, bottom: 45),
      decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withAlpha(20),
                blurRadius: 20,
                spreadRadius: 10)
          ]),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: navIcons.map((icon) {
            int index = navIcons.indexOf(icon);
            bool isSelected = selectedIndex == index;
            return Material(
              color: Colors.transparent,
              child: GestureDetector(
                onTap: () {
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                },
                child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: isSelected ? Colors.white : Colors.white54),
                    child: Icon(icon,
                        color: isSelected ? Colors.black : Colors.blue)),
              ),
            );
          }).toList()),
    );
  }
}
