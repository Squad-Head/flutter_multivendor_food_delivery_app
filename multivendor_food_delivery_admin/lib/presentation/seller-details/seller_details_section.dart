import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/seller_details_card.dart';

class SellerDetailsSection extends StatelessWidget {
  const SellerDetailsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          const Expanded(
            child:
                SellerDetailsCard(title: "Approved Seller", valueText: "137"),
          ),
          SizedBox(width: 8.w),
          const Expanded(
            child: SellerDetailsCard(title: "Not Approved", valueText: "5"),
          ),
          SizedBox(width: 8.w),
          const Expanded(
            child:
                SellerDetailsCard(title: "Deactivated Sellers", valueText: "0"),
          ),
        ],
      ),
    );
  }
}
