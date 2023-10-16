import 'package:flutter/material.dart';
import 'package:my_vnpt/utils/color_util.dart';

class ItemPackageWidget extends StatelessWidget {
  const ItemPackageWidget({super.key, required this.data, this.onTap});
  final Map<String, dynamic> data;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              data['image'],
              width: 150,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffF6F8FE),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    data['tags'],
                    style: const TextStyle(
                      color: ColorUtil.primaryColor,
                      fontSize: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  data['name'],
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  data['content'],
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 10),
                Text(
                  data['price'],
                  style: const TextStyle(
                    color: ColorUtil.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
