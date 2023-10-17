import 'package:flutter/material.dart';
import 'package:my_vnpt/phone_package/widgets/item_category.dart';
import 'package:my_vnpt/utils/color_util.dart';
import 'package:my_vnpt/utils/icons_utils.dart';
import 'package:my_vnpt/widgets/title_widget.dart';

import 'widgets/item_service.dart';
import 'widgets/item_service_add.dart';

// ignore: must_be_immutable
class TelecomScreen extends StatelessWidget {
  TelecomScreen({super.key});
  List<Map<String, dynamic>> categories = [
    {"name": "Đăng ký dịch vụ mới", "icon": IconUtils.dkyDichVu},
    {"name": "Thông báo cước", "icon": IconUtils.icThongBao},
    {"name": "Xem hợp đồng", "icon": IconUtils.xemHopDong},
    {"name": "Hỗ trợ", "icon": IconUtils.hoTro},
    {"name": "Lịch sử hoạt động", "icon": IconUtils.lichSuHoatDong},
    {"name": "Tất cả", "icon": IconUtils.icTatCa},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                const SizedBox(height: 200),
                Container(
                  height: 160,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        IconUtils.bgTutorial,
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                const SafeArea(
                  child: SizedBox(
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Viễn thông",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Quản lý đơn giản, hỗ trợ nhanh chóng",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 20,
                  right: 20,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Tìm kiếm tiện ích",
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 30,
                        color: ColorUtil.greyColor,
                      ),
                      contentPadding: const EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleWidget(
                    title: "Dịch vụ của tôi",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      ItemService(),
                      SizedBox(
                        width: 20,
                      ),
                      ItemServiceAdd()
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TitleWidget(title: "Tiện ích"),
                  const SizedBox(
                    height: 10,
                  ),
                  GridView.builder(
                    itemCount: categories.length,
                    padding: const EdgeInsets.all(5),
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1,
                      crossAxisSpacing: 5,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return ItemCategoryWidget(
                        icon: categories[index]['icon'],
                        name: categories[index]['name'],
                        size: 45,
                      );
                    },
                    shrinkWrap: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(IconUtils.icBannerNetwork),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TitleWidget(title: "Quản lý tài khoản"),
                  const SizedBox(
                    height: 20,
                  ),
                  const ItemServiceAdd(
                    title: "Đăng ký quản lý tài khoản",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
