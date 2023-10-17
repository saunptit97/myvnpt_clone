import 'package:flutter/material.dart';
import 'package:my_vnpt/utils/color_util.dart';
import 'package:my_vnpt/widgets/button_widget.dart';

class ItemService extends StatelessWidget {
  const ItemService({super.key, required this.data, this.onTap});
  final Map<String, dynamic> data;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(
                data['image'],
                height: 150,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['name'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['price'],
                        style: const TextStyle(color: ColorUtil.primaryColor),
                      ),
                    ],
                  ),
                  const ButtonWidget(
                    width: 100,
                    height: 30,
                    title: "Đăng ký",
                    titleStyle: TextStyle(color: Colors.white, fontSize: 12),
                  )
                  // Expanded(
                  //   child: const ButtonWidget(
                  //     title: "Đăng ký",
                  //   ),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
