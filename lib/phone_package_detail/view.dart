import 'package:flutter/material.dart';
import 'package:my_vnpt/utils/color_util.dart';
import 'package:my_vnpt/utils/icons_utils.dart';
import 'package:my_vnpt/widgets/button_widget.dart';

import 'widgets/item_detail.dart';

class PhonePackageDetailScreen extends StatelessWidget {
  const PhonePackageDetailScreen({super.key, required this.data});
  final Map<String, dynamic> data;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                const SizedBox(
                  height: 450,
                ),
                Image.asset(
                  IconUtils.topPageDetail,
                  height: 250,
                  width: size.width,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 10,
                  left: 20,
                  child: SafeArea(
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        padding: const EdgeInsets.all(5),
                        child: const Center(child: Icon(Icons.arrow_back_ios)),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 15,
                  right: 15,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            data['name'],
                            style: const TextStyle(
                              color: ColorUtil.primaryColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xffFE9513),
                              ),
                              Text(
                                "4.4",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            "85985+ lượt mua",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: ColorUtil.greyColor,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Divider(thickness: 1),
                          const SizedBox(height: 10),
                          const Row(
                            children: [
                              ItemDetailWidget(
                                value: "5GB/ngày",
                                title: "Data",
                              ),
                              ItemDetailWidget(
                                value: "1440 (phút)",
                                title: "Thoại nội mạng",
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Row(
                            children: [
                              ItemDetailWidget(
                                value: "5 (phút)",
                                title: "Thoại ngoại mạng",
                              ),
                              ItemDetailWidget(
                                value: "1 ngày",
                                title: "Chu kỳ",
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Đặc điểm nổi bật",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            IconUtils.packageDataBestForSale,
                            width: 80,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Ngon bổ rẻ",
                            style: TextStyle(
                              color: ColorUtil.greyColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            IconUtils.packageDataBestBuy,
                            width: 80,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Bán chạy",
                            style: TextStyle(
                              color: ColorUtil.greyColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            IconUtils.packageDataHot,
                            width: 80,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Tiết kiệm",
                            style: TextStyle(
                              color: ColorUtil.greyColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              thickness: 20,
              color: Color(0xffF5F8FE),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(data['content']),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        height: 130,
        width: size.width,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Giá gói",
                  style: TextStyle(
                    color: ColorUtil.greyColor,
                    fontSize: 16,
                  ),
                ),
                Text(
                  data['price'],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWidget(
              title: "Đăng ký",
            ),
          ],
        ),
      ),
    );
  }
}
