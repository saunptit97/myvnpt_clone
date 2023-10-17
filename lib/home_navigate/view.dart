import 'package:flutter/material.dart';
import 'package:my_vnpt/home/view.dart';
import 'package:my_vnpt/package/view.dart';
import 'package:my_vnpt/personal/view.dart';
import 'package:my_vnpt/telecom/view.dart';
import 'package:my_vnpt/utils/color_util.dart';
import 'package:my_vnpt/utils/icons_utils.dart';

class HomeNavigateScreen extends StatefulWidget {
  const HomeNavigateScreen({super.key});

  @override
  State<HomeNavigateScreen> createState() => _HomeNavigateScreenState();
}

class _HomeNavigateScreenState extends State<HomeNavigateScreen> {
  int currentIndex = 0;
  List<Widget> widgets = [
    const HomeScreen(),
    TelecomScreen(),
    PackageScreen(),
    const PersonalScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xffFAFAFA),
        selectedItemColor: ColorUtil.primaryColor,
        currentIndex: currentIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
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
              IconUtils.icNetwork,
              width: 30,
              height: 30,
            ),
            activeIcon: Image.asset(
              IconUtils.icNetworkActive,
              width: 30,
              height: 30,
            ),
            label: 'Viễn Thông',
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
          BottomNavigationBarItem(
            icon: Image.asset(
              IconUtils.icPerson,
              width: 30,
              height: 30,
            ),
            activeIcon: Image.asset(
              IconUtils.icPersonActive,
              width: 30,
              height: 30,
            ),
            label: 'Cá nhân',
          ),
        ],
      ),
    );
  }
}
