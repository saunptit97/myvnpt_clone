import 'package:flutter/material.dart';
import 'package:my_vnpt/utils/color_util.dart';

import 'item_payment.dart';

class MethodPaymentWidget extends StatefulWidget {
  const MethodPaymentWidget({super.key});

  @override
  State<MethodPaymentWidget> createState() => _MethodPaymentWidgetState();
}

class _MethodPaymentWidgetState extends State<MethodPaymentWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBottomSheet();
      },
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Nguồn tiền",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorUtil.greyColor,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(20),
              child: const Row(
                children: [
                  Text(
                    "Chọn nguồn tiền thanh toán",
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: ColorUtil.greyColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  showBottomSheet() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.white,
          height: 400,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "Chọn Nguồn Tiền",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 60,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ItemPaymentWidget(
                  title: "Ví VNPT Pay",
                  description:
                      "Thanh toán bằng Ví VNPT Pay để được áp dụng các khuyến mãi hiện có (Khuyên dùng)",
                  onTap: () {},
                ),
                ItemPaymentWidget(
                  title: "NH nội địa/ quốc tế khác",
                  description:
                      "Thanh toán bằng tài khoản ngân hàng nội địa hoặc thẻ quốc tế",
                  onTap: () {},
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
