import 'package:flutter/material.dart';
import 'package:my_vnpt/phone_package/widgets/item_package.dart';
import 'package:my_vnpt/routes/routes.dart';
import 'package:my_vnpt/utils/color_util.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
  final List<Map<String, dynamic>> packages = [
    {
      "image": "assets/images/post1.png",
      "name": "VÔ CỰC (HOT)",
      "content":
          """- 5GB Data (hết dung lượng dừng truy cập)\n- Miễn phí cước cuộc gọi di động nội mạng VinaPhone dưới 20 """,
      "price": "10.000đ/ ngày",
      "tags": "On Plus",
    },
    {
      "image": "assets/images/post2.png",
      "name": "TG599",
      "content":
          """- 12GB Data/ngày (hết dung lượng dừng truy cập)\n- 4.000 phút gọi di động nội mạng VinaPhone""",
      "price": "599.000/ tháng",
      "tags": "data ngày",
    },
    {
      "image": "assets/images/post3.png",
      "name": "VD100T",
      "content":
          """- 1GB Data/ngày (hết dung lượng dừng truy cập)\n- Miễn phí Data truy cập ứng dụng Tiktok, MyTV OTT""",
      "price": "100.000/ tháng",
      "tags": "thương gia",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gói cước Combo"),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: const Row(
                  children: [
                    Text(
                      "Sắp xếp giá",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff8A9197),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: const Row(
                  children: [
                    Text(
                      "Chu kỳ gói cước",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff8A9197),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              ),
            ]),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(20),
              itemBuilder: (_, index) {
                return ItemPackageWidget(
                  data: packages[index],
                  onTap: () => Navigator.pushNamed(
                    context,
                    RouteNames.packageDetail,
                    arguments: {"detail": packages[index]},
                  ),
                );
              },
              shrinkWrap: true,
              itemCount: packages.length,
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
              physics: const NeverScrollableScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}
