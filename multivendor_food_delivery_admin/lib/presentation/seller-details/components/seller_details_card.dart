import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SellerDetailsCard extends StatelessWidget {
  const SellerDetailsCard({
    Key? key,
    required this.title,
    required this.valueText,
  }) : super(key: key);

  final String title;
  final String valueText;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        height: 50.h,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              valueText,
              style: const TextStyle(color: Colors.purple),
            ),
            SizedBox(height: 4.h),
            Text(title),
          ],
        ),
      ),
    );
  }
}
