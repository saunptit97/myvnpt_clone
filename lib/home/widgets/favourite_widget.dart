import 'package:flutter/material.dart';
import 'package:my_vnpt/routes/routes.dart';
import 'package:my_vnpt/utils/icons_utils.dart';

import 'item_service_widget.dart';

class FavouriteWidget extends StatefulWidget {
  FavouriteWidget({super.key});

  @override
  State<FavouriteWidget> createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget> {
  final List<Map<String, dynamic>> favourites = [
    {
      "icon": IconUtils.icNapDienThoai2,
      "name": "Nạp điện thoại",
      "onTap": () {}
    },
    {
      "icon": IconUtils.icThongTinThueBao,
      "name": "Thông tin thuê bao",
      "onTap": () {}
    },
    {
      "icon": IconUtils.icCuocVienThong,
      "name": "Đóng cước viễn thông",
      "onTap": () {}
    },
    {"icon": IconUtils.icThongBao, "name": "Cài đặt thông báo", "onTap": () {}},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Dịch vụ ưa thích",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Xem tat ca",
                style: TextStyle(
                  color: Color(0xff416FCE),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),
        SizedBox(
          height: 100,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return ItemServiceWidget(
                title: favourites[index]['name'],
                icon: favourites[index]['icon'],
                onTap: () {
                  if (index == 0) {
                    Navigator.pushNamed(
                      context,
                      RouteNames.rechargeMoney,
                    );
                  }
                },
              );
            },
            separatorBuilder: (_, index) {
              return SizedBox(width: 20);
            },
            itemCount: favourites.length,
          ),
        )
      ],
    );
  }
}
