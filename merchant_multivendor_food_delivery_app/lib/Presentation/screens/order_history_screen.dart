import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import '../widget/order history/order_history_widget.dart';
import '../widget/order history/past_new_order_row_widget.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0.w),
      child: Column(
        children: [
          Center(
            child: Text(
              'Order History',
              style: kTitleStyle,
            ),
          ),
          SizedBox(height: 10.h),
          const PastNewOrderRowWidget(),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 20,
              itemBuilder: (context, index) {
                return const OrderHistoryWidget();
              },
            ),
          )
        ],
      ),
    );
  }
}
