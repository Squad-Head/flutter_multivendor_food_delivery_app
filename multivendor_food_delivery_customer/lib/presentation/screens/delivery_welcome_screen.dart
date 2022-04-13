import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:multivendor_food_delivery_customer/presentation/constants.dart';

import '../widget/new_order_widget.dart';
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
            child: NewOrdersWIdget(oderId: oderId),
            flex: 8,
          ),

          const Divider(
            color: Color.fromARGB(255, 179, 176, 176),
            thickness: 1,
            indent: 20,
          )
        ],
      ),
    );
  }
}
