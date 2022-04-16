import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/top_category_table.dart';
import 'components/top_seller_table.dart';

class TableSection extends StatelessWidget {
  const TableSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: TopSellerTable(),
        ),
        SizedBox(width: 8.w),
        const Expanded(
          child: TopCategoryTable(),
        ),
      ],
    );
  }
}
