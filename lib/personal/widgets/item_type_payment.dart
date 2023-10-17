import 'package:flutter/material.dart';
import 'package:my_vnpt/utils/icons_utils.dart';

class ItemTypePayment extends StatelessWidget {
  const ItemTypePayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(
            IconUtils.headerPackage,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "Tài khoản di động",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Icon(
                Icons.remove_red_eye,
                color: Colors.white,
                size: 20,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "0đ",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
