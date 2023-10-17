import 'package:flutter/material.dart';
import 'package:my_vnpt/routes/routes.dart';
import 'package:my_vnpt/utils/color_util.dart';
import 'package:my_vnpt/utils/const_util.dart';
import 'package:my_vnpt/utils/icons_utils.dart';
import 'package:my_vnpt/widgets/sliver_widget.dart';

import 'widgets/item_category.dart';
import 'widgets/item_free_package.dart';
import 'widgets/item_package.dart';
import 'widgets/item_package_data.dart';
import 'widgets/package_title.dart';
import 'widgets/see_all_button.dart';

class PhonePackageScreen extends StatefulWidget {
  const PhonePackageScreen({super.key});

  @override
  State<PhonePackageScreen> createState() => _PhonePackageScreenState();
}

class _PhonePackageScreenState extends State<PhonePackageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliverWidget(
        imageBackground: IconUtils.headerPackage,
        expandedHeight: 120,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Stack(
                    children: [
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: const Offset(
                                  0, 1), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Quý khách đang tìm gói cước gì?",
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 30,
                            color: ColorUtil.greyColor,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ItemCategoryWidget(
                      name: "Gói cước Combo",
                      icon: IconUtils.packageDataHot,
                      onTap: () {
                        Navigator.pushNamed(context, RouteNames.category);
                      },
                    ),
                    ItemCategoryWidget(
                      name: "Ưu đãi Data",
                      icon: IconUtils.packageDataHot,
                      onTap: () {
                        Navigator.pushNamed(context, RouteNames.category);
                      },
                    ),
                    ItemCategoryWidget(
                      name: "Miễn phí MXH",
                      icon: IconUtils.packageDataHot,
                      onTap: () {
                        Navigator.pushNamed(context, RouteNames.category);
                      },
                    ),
                    ItemCategoryWidget(
                      name: "Gói cước quốc tế",
                      icon: IconUtils.packageDataHot,
                      onTap: () {
                        Navigator.pushNamed(context, RouteNames.category);
                      },
                    ),
                  ],
                ),
              ),
              _comboPackages(),
              const SizedBox(height: 20),
              _promoteDataPackages(),
              const SizedBox(height: 20),
              _freeSocialPackages()
            ],
          ),
        ),
      ),
    );
  }

  Widget _comboPackages() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const PackageTitleWidget(
            title: "Gói cước Combo",
            description: "Chỉ 1 gói cược đáp ứng trọn vẹn nhu cầu",
          ),
          const SizedBox(
            height: 20,
          ),
          ListView.separated(
            padding: const EdgeInsets.all(0),
            itemBuilder: (_, index) {
              return ItemPackageWidget(
                data: ConstUtil.packages[index],
                onTap: () => Navigator.pushNamed(
                  context,
                  RouteNames.packageDetail,
                  arguments: {"detail": ConstUtil.packages[index]},
                ),
              );
            },
            shrinkWrap: true,
            itemCount: ConstUtil.packages.length,
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
            physics: const NeverScrollableScrollPhysics(),
          ),
          const SizedBox(
            height: 30,
          ),
          const SeeAllButton(),
        ],
      ),
    );
  }

  Widget _promoteDataPackages() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PackageTitleWidget(
            title: "Ưu đãi Data",
            description: "Thoả mái Data, không lo giới hạn",
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 220,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return ItemPackageData(
                  data: ConstUtil.packages[index],
                  onTap: () => Navigator.pushNamed(
                    context,
                    RouteNames.packageDetail,
                    arguments: {"detail": ConstUtil.packages[index]},
                  ),
                );
              },
              itemCount: ConstUtil.packages.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 20);
              },
            ),
          ),
          const SizedBox(height: 30),
          const SeeAllButton(),
        ],
      ),
    );
  }

  Widget _freeSocialPackages() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PackageTitleWidget(
            title: "Miễn phí MXH",
            description: "Lướt Youtube, Tiktok,... không giới hạn",
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 180,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return ItemFreePackage(
                  data: ConstUtil.packages[index],
                  onTap: () => Navigator.pushNamed(
                    context,
                    RouteNames.packageDetail,
                    arguments: {"detail": ConstUtil.packages[index]},
                  ),
                );
              },
              itemCount: ConstUtil.packages.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 20);
              },
            ),
          ),
          const SizedBox(height: 30),
          const SeeAllButton(),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget child;
  final double height;

  const CustomAppBar({
    super.key,
    required this.child,
    this.height = kToolbarHeight,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage(
            IconUtils.headerPackage,
          ),
        ),
      ),
      child: child,
    );
  }
}
