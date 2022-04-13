import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliveryTrackingModel {
  final dynamic order;
  final String titleText;
  final Icon icon;
  final Color backgroundColor;

  DeliveryTrackingModel({
    required this.order,
    required this.titleText,
    required this.icon,
    required this.backgroundColor,
  });
}

List deliveryModelList = [
  DeliveryTrackingModel(
    order: 3,
    titleText: 'Total Completed Orders',
    icon: Icon(
      Icons.delivery_dining,
      size: 100.sp,
      color: const Color(0xFFb0634e),
    ),
    backgroundColor: const Color(0xFFe4f0f4),
  ),
  DeliveryTrackingModel(
    order: 8,
    titleText: 'Total Pending Orders',
    icon: Icon(
      Icons.pending_actions,
      size: 100.sp,
      color: const Color(0xFF145369),
    ),
    backgroundColor: const Color(0xFFd3bdd4),
  ),
  DeliveryTrackingModel(
    order: 1,
    titleText: 'Todays Order',
    icon: Icon(
      Icons.calendar_month,
      size: 100.sp,
      color: const Color(0xFF29a465),
    ),
    backgroundColor: const Color(0xFFfdebd1),
  ),
  DeliveryTrackingModel(
    order: 300.00,
    titleText: 'Cash in your hand',
    icon: Icon(
      Icons.attach_money,
      size: 100.sp,
      color: const Color(0xFFbea925),
    ),
    backgroundColor: const Color(0xFFd7e2dc),
  ),
];
