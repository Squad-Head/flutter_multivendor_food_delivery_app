import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/chart_sample1.dart';
import 'components/chart_sample2.dart';

class ChartSection extends StatelessWidget {
  const ChartSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: SizedBox(
          height: 200.h,
          child: const LineChartSample1(),
        )),
        SizedBox(width: 10.w),
        Expanded(
            child: SizedBox(
          height: 200.h,
          child: const PieChartSample3(),
        )),
      ],
    );
  }
}
