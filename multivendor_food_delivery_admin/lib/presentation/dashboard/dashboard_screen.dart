import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multivendor_food_delivery_admin/presentation/chart/components/pie_chart.dart';

import '../chart/chart_section.dart';
import '../components/section_title_text.dart';
import '../components/stock_info.dart';
import '../order-outlines/order_outlines_section.dart';
import '../seller-details/seller_details_section.dart';
import '../table-section/table_section.dart';
import 'components/general_section.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const GeneralSection(),
              const ChartSection(),
              const PieChart(),
              SizedBox(height: 20.h),
              const StockInfo(),
              SizedBox(height: 8.h),
              const SectionTitleText(text: "Seller Details"),
              SizedBox(height: 8.h),
              const SellerDetailsSection(),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SectionTitleText(text: "Top Sellers"),
                  SectionTitleText(text: "Top Categories")
                ],
              ),
              SizedBox(height: 8.h),
              const TableSection(),
              SizedBox(height: 8.h),
              const SectionTitleText(text: "Order Outlines"),
              SizedBox(height: 8.h),
              const OrderOutlinesTable(),
            ],
          ),
        ),
      ),
    );
  }
}
