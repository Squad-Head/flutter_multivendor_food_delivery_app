import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/dashboard_card.dart';
import '../../constant.dart';

class GeneralSection extends StatelessWidget {
  const GeneralSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      child: Row(
        children: const [
          Expanded(
            child: DashboardCard(
              color: Colors.purple,
              img: "assets/icons/order.png",
              text: "Orders",
              valueText: "0",
            ),
          ),
          SizedBox(width: defaultPadding),
          Expanded(
            child: DashboardCard(
                img: "assets/icons/add-user.png",
                color: Colors.blue,
                text: "Marchant Request",
                valueText: "5"),
          ),
          SizedBox(width: defaultPadding),
          Expanded(
              child: DashboardCard(
                  img: "assets/icons/delivery.png",
                  color: Colors.redAccent,
                  text: "Delivery Boys",
                  valueText: "25")),
          SizedBox(width: defaultPadding),
          Expanded(
              child: DashboardCard(
                  img: "assets/icons/product.png",
                  color: Colors.green,
                  text: "Products",
                  valueText: "1024+")),
        ],
      ),
    );
  }
}
