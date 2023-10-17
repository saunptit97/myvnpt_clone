import 'package:flutter/material.dart';
import 'package:my_vnpt/package/widgets/item_service.dart';
import 'package:my_vnpt/phone_package/widgets/package_title.dart';
import 'package:my_vnpt/routes/routes.dart';
import 'package:my_vnpt/utils/const_util.dart';
import 'package:my_vnpt/utils/icons_utils.dart';
import 'package:my_vnpt/widgets/title_widget.dart';

import 'widgets/item_image.dart';

// ignore: must_be_immutable
class PackageScreen extends StatelessWidget {
  PackageScreen({super.key});
  List<Map<String, dynamic>> categories = [
    {"name": "Đăng ký dịch vụ mới", "icon": IconUtils.icRegisterService},
    {"name": "Thông báo cước", "icon": IconUtils.icSupport},
    {"name": "Xem hợp đồng", "icon": IconUtils.icSupport},
    {"name": "Hỗ trợ", "icon": IconUtils.icSupport},
    {"name": "Lịch sử hoạt động", "icon": IconUtils.icHistory},
    {"name": "Tất cả", "icon": IconUtils.icSupport},
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              IconUtils.bgTutorial,
            ),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SafeArea(
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Gói cước của tôi",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "MI_BIG50Y_12M",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "Hạn sử dụng 20/10/2023",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 20,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10),
                  ),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleWidget(title: "Nhiều người quan tâm nhất"),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 220,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return ItemService(
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
                    const SizedBox(
                      height: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        IconUtils.icBannerNetwork,
                        height: 200,
                        width: size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const PackageTitleWidget(
                      title: "Tiếp tục khám phá",
                      description: "Hàng trăm gói cước đang chờ bạn",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ItemImageWidget(
                                image: IconUtils.icMobile,
                                text: "Di động",
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    RouteNames.packageMobile,
                                  );
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded(
                              child: ItemImageWidget(
                                text: "Internet & Truyền hình",
                                image: IconUtils.icInternet,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          children: [
                            Expanded(
                              child: ItemImageWidget(
                                text: "Giá trị gia tăng",
                                image: IconUtils.icIncrese,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: ItemImageWidget(
                                text: "Nội dung số",
                                image: IconUtils.icContent,
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
