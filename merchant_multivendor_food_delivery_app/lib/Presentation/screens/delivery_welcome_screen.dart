import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:merchant_multivendor_food_delivery_app/Presentation/constants.dart';

import '../widget/deliveryWelcome/new_order_widget.dart';
import '../widget/deliveryWelcome/welcome_grid_widget.dart';

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
          Text('Welcome Admin!', style: kTitleStyle),
          // TODO: add name dynamically
          SizedBox(height: 10.h),

          const Expanded(
            child: WelcomeGridWidget(),
            flex: 18,
          ),

          Expanded(
            child: NewOrdersWIdget(oderId: oderId),
            flex: 14,
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
