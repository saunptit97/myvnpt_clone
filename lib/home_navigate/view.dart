import 'package:flutter/material.dart';
import 'package:my_vnpt/home/view.dart';
import 'package:my_vnpt/phone_package/phone_package.dart';
import 'package:my_vnpt/utils/color_util.dart';
import 'package:my_vnpt/utils/icons_utils.dart';

class HomeNavigateScreen extends StatefulWidget {
  const HomeNavigateScreen({super.key});

  @override
  State<HomeNavigateScreen> createState() => _HomeNavigateScreenState();
}

class _HomeNavigateScreenState extends State<HomeNavigateScreen> {
  int currentIndex = 0;
  List<Widget> widgets = const [
    HomeScreen(),
    PhonePackageScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xffFAFAFA),
        selectedItemColor: ColorUtil.primaryColor,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              IconUtils.icHome,
              width: 30,
              height: 30,
            ),
            activeIcon: Image.asset(
              IconUtils.icHomeActive,
              width: 30,
              height: 30,
            ),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              IconUtils.icPackage,
              width: 30,
              height: 30,
            ),
            activeIcon: Image.asset(
              IconUtils.icPackageActive,
              width: 30,
              height: 30,
            ),
            label: 'Gói cước',
          ),
        ],
      ),
    );
  }
}
