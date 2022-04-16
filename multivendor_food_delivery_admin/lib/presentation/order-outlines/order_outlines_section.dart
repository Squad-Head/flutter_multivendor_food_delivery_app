import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderOutlinesTable extends StatelessWidget {
  const OrderOutlinesTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable2(
        columnSpacing: 12.w,
        horizontalMargin: 12.w,
        minWidth: 540.w,
        columns: const [
          DataColumn2(
            label: Text('Order ID'),
            size: ColumnSize.L,
          ),
          DataColumn(
            label: Text('Sellers'),
          ),
          DataColumn(
            label: Text('User\nName'),
          ),
          DataColumn(
            label: Text('Amount'),
          ),
          DataColumn(
            label: Text('Delivery\nCharge'),
          ),
          DataColumn(
            label: Text('Promo'),
          ),
          DataColumn(
            label: Text('Vat'),
          ),
          DataColumn(
            label: Text('Total'),
          ),
          DataColumn(
            label: Text('Payment\nMethod'),
          ),
        ],
        rows: const [
          DataRow(cells: [
            DataCell(Text("1105")),
            DataCell(Text("Fluttr BD")),
            DataCell(Text("Minhaj")),
            DataCell(Text("1450")),
            DataCell(Text("60")),
            DataCell(Text("-")),
            DataCell(Text("5%")),
            DataCell(Text("1520")),
            DataCell(Text("Bkash")),
          ])
        ]);
  }
}
