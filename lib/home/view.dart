import 'package:flutter/material.dart';
import 'package:my_vnpt/utils/icons_utils.dart';
import 'package:my_vnpt/widgets/title_widget.dart';

import 'widgets/do_more_widget.dart';
import 'widgets/favourite_widget.dart';
import 'widgets/header_widget.dart';
import 'widgets/item_support.dart';
import 'widgets/tag_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff7FCDFE),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderWidget(),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 15,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(18),
                  ),
                ),
                child: Column(
                  children: [
                    FavouriteWidget(),
                    const SizedBox(height: 30),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            IconUtils.icBannerNetwork,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const DoMoreWidget(),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                padding: const EdgeInsets.all(20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TitleWidget(title: "Hỗ trợ nhanh"),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ItemSupportWidget(
                                image: IconUtils.icIconHomeMobile,
                                text: "Điện thoại di động",
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: ItemSupportWidget(
                                text: "Internet",
                                image: IconUtils.icIconHomeInternet,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: ItemSupportWidget(
                                text: "Truyền hình MyTV",
                                image: IconUtils.icIconHomeMyTV,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: ItemSupportWidget(
                                text: "Điện thoại cố định",
                                image: IconUtils.icIconHomeSupport,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TitleWidget(title: "Xu hướng tìm kiếm"),
                    SizedBox(
                      height: 30,
                    ),
                    Wrap(
                      children: [
                        TagWidget(tag: "BIG90"),
                        SizedBox(
                          width: 10,
                        ),
                        TagWidget(tag: "BIG90"),
                        TagWidget(tag: "BIG90"),
                        SizedBox(
                          width: 10,
                        ),
                        TagWidget(tag: "BIG90"),
                        TagWidget(tag: "BIG90"),
                        SizedBox(
                          width: 10,
                        ),
                        TagWidget(tag: "BIG90"),
                      ],
                    ),
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
