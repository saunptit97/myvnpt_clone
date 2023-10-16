import 'package:flutter/material.dart';
import 'package:my_vnpt/routes/routes.dart';
import 'package:my_vnpt/utils/color_util.dart';
import 'package:my_vnpt/utils/icons_utils.dart';
import 'package:my_vnpt/widgets/button_widget.dart';

class SuccessDialogWidget extends StatelessWidget {
  const SuccessDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(IconUtils.icSuccess),
            const SizedBox(height: 20),
            const Text("Nạp tiền thành công"),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ButtonWidget(
                    title: "Tiếp tục",
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ButtonWidget(
                    title: "Kết thúc",
                    onTap: () {
                      Navigator.popUntil(
                        context,
                        ModalRoute.withName(RouteNames.home),
                      );
                    },
                    btnColor: Colors.white,
                    borderColor: ColorUtil.primaryColor,
                    titleStyle: const TextStyle(color: ColorUtil.primaryColor),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
