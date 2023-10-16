import 'package:flutter/material.dart';
import 'package:my_vnpt/confirm_payment/widgets/success_dialog.dart';
import 'package:my_vnpt/utils/color_util.dart';
import 'package:my_vnpt/widgets/button_widget.dart';

class DetailTransactionWidget extends StatelessWidget {
  const DetailTransactionWidget({
    super.key,
    this.network,
    this.phone,
    this.money,
  });
  final String? network;
  final String? phone;
  final String? money;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Chi Tiết Giao Dịch",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                itemRow("Dịch vụ", "Nạp tiền điện thoại"),
                itemRow("Nhà mạng", network ?? "Vinaphone"),
                itemRow("Số điện thoại", phone ?? "0977695448"),
                itemRow("Số tiền gốc", money ?? "10,000đ"),
                itemRow(
                  "Chiếu khấu",
                  "-0đ",
                  valueStyle: const TextStyle(
                    color: ColorUtil.primaryColor,
                  ),
                ),
                itemRow(
                  "Phí giao dịch",
                  "Miễn phí",
                  valueStyle: const TextStyle(
                    color: Colors.green,
                  ),
                ),
                const Divider(),
              ],
            ),
          ),
          Column(
            children: [
              const Text(
                "Áp dụng tiêu chuẩn bảo mật Geotrust SSL. VNPT Money cam kết không lưu thẻ của bạn",
                style: TextStyle(color: ColorUtil.greyColor),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Tổng tiền thanh toán",
                    style: TextStyle(color: ColorUtil.greyColor, fontSize: 16),
                  ),
                  Text(
                    money ?? "100,000 đ",
                    style: const TextStyle(
                      color: ColorUtil.primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              ButtonWidget(
                title: "Thanh toán",
                titleStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16,
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (_) {
                      return const SuccessDialogWidget();
                    },
                  );
                },
              ),
              const SizedBox(
                height: 20,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget itemRow(String title, String value, {TextStyle? valueStyle}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: ColorUtil.greyColor,
            ),
          ),
          Text(
            value,
            style: valueStyle ??
                const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
          ),
        ],
      ),
    );
  }
}
