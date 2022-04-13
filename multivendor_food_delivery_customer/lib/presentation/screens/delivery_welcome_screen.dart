import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multivendor_food_delivery_customer/presentation/constants.dart';

import '../widget/welcome_grid_widget.dart';

class DeliveryWelcomeScreen extends StatelessWidget {
  final String oderId = "#dfe1524";

  const DeliveryWelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Text('Welcome Admin!', style: kTitleStyle),
          // TODO: add name dynamically
          SizedBox(height: 10.h),

          const Expanded(
            child: WelcomeGridWidget(),
            flex: 9,
          ),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('New Orders', style: kTitleStyle),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order Id: $oderId',
                      style: kSubTitleStyle,
                    ),
                    Text(
                      // TODO: use the enum orderstatus.pending/delivered..etc
                      'Order Pending',

                      style: kSubTitleStyle.copyWith(
                          color: const Color(0xFFff9c11)),
                    )
                  ],
                )
              ],
            ),
            flex: 8,
          ),
        ],
      ),
    );
  }
}
