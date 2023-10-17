import 'package:flutter/material.dart';
import 'package:my_vnpt/utils/icons_utils.dart';
import 'package:my_vnpt/widgets/title_widget.dart';

import 'widgets/item_info.dart';
import 'widgets/item_setting.dart';
import 'widgets/item_type_add.dart';
import 'widgets/item_type_payment.dart';

class PersonalScreen extends StatefulWidget {
  const PersonalScreen({super.key});

  @override
  State<PersonalScreen> createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF5F8FE),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  const SizedBox(height: 280),
                  Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          IconUtils.bgTutorial,
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SafeArea(
                    child: SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 60,
                              width: 60,
                              child: Image.asset(
                                IconUtils.icProfile,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nguyễn Thị Nghĩ".toUpperCase(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  "0824 318 851 ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 20,
                    right: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(
                                0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(20),
                      child: const Row(children: [
                        ItemInfoWidget(
                          icon: IconUtils.icRegisterService,
                          title: "Thông tin tài khoản",
                        ),
                        SizedBox(width: 10),
                        ItemInfoWidget(
                          icon: IconUtils.icHistory,
                          title: "Lịch sử sử dụng",
                        ),
                        SizedBox(width: 10),
                        ItemInfoWidget(
                          icon: IconUtils.icSupport,
                          title: "Trung tâm hỗ trợ",
                        ),
                      ]),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleWidget(
                      title: "Quản lý thanh toán",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nguồn tiền",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              ItemTypePayment(),
                              SizedBox(width: 10),
                              ItemTypeAdd()
                            ],
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ItemSettingWidget(
                            icon: Icons.payment,
                            title: 'Tiện ích thanh toán',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Khác",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          const ItemSettingWidget(
                            icon: Icons.settings,
                            title: 'Cài đặt ứng dụng',
                          ),
                          const SizedBox(height: 5),
                          const Divider(
                            thickness: 1,
                          ),
                          const SizedBox(height: 5),
                          ItemSettingWidget(
                            icon: Icons.share,
                            title: 'Mã giới thiệu',
                            isShowArrow: false,
                            rightWidget: Container(
                              decoration: BoxDecoration(
                                color: Colors.yellow.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: const EdgeInsets.all(4),
                              child: const Text(
                                "CTV00120",
                                style: TextStyle(color: Colors.yellow),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Divider(
                            thickness: 1,
                          ),
                          const SizedBox(height: 5),
                          const ItemSettingWidget(
                            icon: Icons.logout,
                            title: 'Đăng xuất',
                            isShowArrow: false,
                          ),
                        ],
                      ),
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
