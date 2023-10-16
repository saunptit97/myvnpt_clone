import 'package:flutter/material.dart';
import 'package:my_vnpt/recharge_money/view.dart';
import 'package:my_vnpt/routes/routes.dart';
import 'package:my_vnpt/utils/color_util.dart';
import 'package:my_vnpt/utils/icons_utils.dart';

import 'item_account_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height / 3,
          margin: const EdgeInsets.only(bottom: 100),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage(
                IconUtils.uvHome,
              ),
              alignment: Alignment.topRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: Center(
                            child: Container(
                              height: 54,
                              width: 54,
                              decoration: BoxDecoration(
                                color: const Color(0xffE4EBFF),
                                borderRadius: BorderRadius.circular(45),
                              ),
                              child: const Icon(
                                Icons.person,
                                size: 54,
                                color: Color(0xff4296FF),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Xin chào",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Nguyễn Thị Nghĩ".toUpperCase(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 35),
                    Container(
                      width: 200,
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: const Color(0xff459FDB),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 15,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: const Text(
                              "Di động",
                              style: TextStyle(
                                color: Color(0xff546CCE),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 15,
                            ),
                            child: const Text(
                              "Internet/TV",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.85),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width - 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      IconUtils.icPhoneGray,
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 4),
                    const Text("0824 318 851 - Thuê bao trả trước"),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: ColorUtil.primaryColor,
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(color: Colors.white, thickness: 1),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    ItemAccountWidget(
                      title: "Tài khoản chính",
                      value: 0,
                    ),
                    ItemAccountWidget(
                      title: "Tài khoản khuyến mại",
                      value: 0,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      utilWidget(
                        "Nạp tiền",
                        IconUtils.icPhoneGray,
                        () => Navigator.pushNamed(
                          context,
                          RouteNames.rechargeMoney,
                        ),
                      ),
                      const SizedBox(width: 15),
                      utilWidget(
                        "Tiện ích mở rộng",
                        IconUtils.icPhoneGray,
                        () {},
                      ),
                      const SizedBox(width: 15),
                      utilWidget(
                        "Hỗ trợ",
                        IconUtils.icPhoneGray,
                        () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget utilWidget(
    String title,
    String icon,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            Image.asset(
              icon,
              color: ColorUtil.primaryColor,
              width: 15,
            ),
            const SizedBox(width: 6),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
