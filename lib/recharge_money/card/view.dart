import 'package:flutter/material.dart';
import 'package:my_vnpt/recharge_money/mobile/widgets/item_package_money.dart';
import 'package:my_vnpt/routes/routes.dart';
import 'package:my_vnpt/utils/color_util.dart';
import 'package:my_vnpt/utils/icons_utils.dart';
import 'package:my_vnpt/widgets/button_widget.dart';

import 'widgets/item_network.dart';

class BuyCardMobileTab extends StatefulWidget {
  const BuyCardMobileTab({super.key});

  @override
  State<BuyCardMobileTab> createState() => _BuyCardMobileTabState();
}

class _BuyCardMobileTabState extends State<BuyCardMobileTab> {
  final List<String> packages = [
    "10,000 đ",
    "20,000 đ",
    "30,000đ",
    "50,000 đ",
    "100,000 đ",
    "200,000 đ",
    "300,000 đ",
    "500,000 đ"
  ];
  String currentSelected = "10,000 đ";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ItemNetworkWidget(
                  icon: IconUtils.vinaphone,
                  isActive: true,
                ),
                ItemNetworkWidget(
                  icon: IconUtils.viettel,
                ),
                ItemNetworkWidget(
                  icon: IconUtils.mobi,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Chọn mệnh giá",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
          GridView.builder(
            itemCount: packages.length,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(5),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              childAspectRatio: 3 / 2.5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (BuildContext context, int index) {
              return ItemPackageMoneyWidget(
                value: packages[index],
                isActive: currentSelected == packages[index],
                onTap: () {
                  setState(() {
                    currentSelected = packages[index];
                  });
                },
              );
            },
            shrinkWrap: true,
          ),
          const SizedBox(
            height: 25,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.report,
                color: ColorUtil.greyColor,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  "Biểu phí chiết khấu có thể thay đổi theo từng nguồn thanh toán và nhà mạng",
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ButtonWidget(
              title: "Nap ngay",
              width: double.infinity,
              onTap: () {
                Navigator.pushNamed(context, RouteNames.confirmPayment);
              },
            ),
          )
        ],
      ),
    );
  }
}
