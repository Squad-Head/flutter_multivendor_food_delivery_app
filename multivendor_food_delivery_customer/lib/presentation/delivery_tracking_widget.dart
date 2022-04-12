import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multivendor_food_delivery_customer/presentation/constants.dart';
import 'package:multivendor_food_delivery_customer/presentation/demo_delivery_tracking_model.dart';

class DeliveryTrackingWidget extends StatelessWidget {
  const DeliveryTrackingWidget({
    required this.deliveryTrackingModel,
    Key? key,
  }) : super(key: key);
  final DeliveryTrackingModel deliveryTrackingModel;

  @override
  Widget build(BuildContext context) {
    print(deliveryTrackingModel.order);
    return Container(
      padding: EdgeInsets.all(25.w),
      height: 500.h,
      width: 500.w,
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
              style: kPrimaryHeadingStyle),
          SizedBox(
            height: 50.h,
          ),
          Text(
            deliveryTrackingModel.titleText,
            style: kSecondaryHeadingStyle,
          ),
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: deliveryTrackingModel.backgroundColor,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              blurStyle: BlurStyle.normal,
              offset: Offset(
                5.0,
                5.0,
              ),
              spreadRadius: 2.0,
            ),
          ]),
    );
  }
}
