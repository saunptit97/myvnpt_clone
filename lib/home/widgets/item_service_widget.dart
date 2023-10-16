import 'package:flutter/material.dart';

class ItemServiceWidget extends StatelessWidget {
  const ItemServiceWidget({
    super.key,
    required this.title,
    this.icon,
    this.onTap,
  });
  final String title;
  final String? icon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 5,
        child: Column(
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: icon != null && icon!.isNotEmpty
                  ? Image.asset(icon!)
                  : const SizedBox(),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Text(
                title,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
