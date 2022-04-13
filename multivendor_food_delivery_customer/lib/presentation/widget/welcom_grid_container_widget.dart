import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multivendor_food_delivery_customer/presentation/constants.dart';
import 'package:multivendor_food_delivery_customer/presentation/welcome_grid_demoModel.dart';

class DeliveryTrackingWidget extends StatelessWidget {
  const DeliveryTrackingWidget({
    required this.deliveryTrackingModel,
    Key? key,
  }) : super(key: key);
  final DeliveryTrackingModel deliveryTrackingModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          deliveryTrackingModel.icon,
          SizedBox(
            height: 50.h,
          ),
          Text(
              deliveryTrackingModel.order.runtimeType == double
                  ? '\$${deliveryTrackingModel.order}'
                  : '${deliveryTrackingModel.order}',
              // TODO: calculate the total selling price and pass here
              style: kPrimaryHeadingStyle),
          //? conditions to check if the value is iteger or double
          SizedBox(
            height: 50.h,
          ),
          Text(
            deliveryTrackingModel.titleText,
            // TODO: load dinamically from the app
            style: kSecondaryHeadingStyle,
          ),
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: deliveryTrackingModel.backgroundColor,
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 203, 199, 199),
              blurRadius: 4,
              blurStyle: BlurStyle.normal,
              offset: Offset(
                2.0,
                5.0,
              ),
              spreadRadius: 0.5,
            ),
          ]),
    );
  }
}
