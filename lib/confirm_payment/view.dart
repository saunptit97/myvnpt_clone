import 'package:flutter/material.dart';
import 'package:my_vnpt/confirm_payment/widgets/detail_transaction.dart';

import 'widgets/method_payment.dart';

class ConfirmPaymentScreen extends StatelessWidget {
  const ConfirmPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Xác Nhận Thanh Toán"),
      ),
      backgroundColor: const Color(0xffE5E5E5),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MethodPaymentWidget(),
          SizedBox(
            height: 20,
          ),
          Expanded(child: DetailTransactionWidget()),
        ],
      ),
    );
  }
}
