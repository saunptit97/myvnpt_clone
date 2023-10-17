import 'package:flutter/material.dart';
import 'package:my_vnpt/utils/icons_utils.dart';
import 'package:my_vnpt/widgets/title_widget.dart';

class DoMoreWidget extends StatelessWidget {
  const DoMoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleWidget(
            title: "Làm nhiều hơn với My VNPT",
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.asset(IconUtils.dichVuDiDong),
                const SizedBox(
                  width: 15,
                ),
                Image.asset(IconUtils.dichVuInternet),
                const SizedBox(
                  width: 15,
                ),
                Image.asset(IconUtils.dichVuHoTro),
              ],
            ),
          )
        ],
      ),
    );
  }
}
