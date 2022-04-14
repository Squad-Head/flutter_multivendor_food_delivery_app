import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../welcome_grid_demoModel.dart';
import 'welcom_grid_container_widget.dart';

class WelcomeGridWidget extends StatelessWidget {
  const WelcomeGridWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1.1.w,
        crossAxisSpacing: 1.w,
        mainAxisSpacing: 1.h,
        crossAxisCount: 2,
      ),
      itemCount: deliveryModelList.length,
      itemBuilder: (BuildContext context, int index) {
        return DeliveryTrackingWidget(
            deliveryTrackingModel: deliveryModelList[index]);
      },
    );
  }
}
