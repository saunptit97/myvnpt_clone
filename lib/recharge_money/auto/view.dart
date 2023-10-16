import 'package:flutter/material.dart';

class AutoPaymentTab extends StatelessWidget {
  const AutoPaymentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Text(
          "Nạp tiền điện thoại tự động thông minh để tiết kiệm thời gian",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
