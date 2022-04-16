import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopSellerTable extends StatelessWidget {
  const TopSellerTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: SizedBox(
        height: 200.h,
        child: SingleChildScrollView(
          child: DataTable2(
            columnSpacing: 12.w,
            minWidth: 250.w,
            columns: const [
              DataColumn2(label: Text("ID")),
              DataColumn(label: Text("Sellers")),
              DataColumn(label: Text("Store")),
              DataColumn(label: Text("Total")),
            ],
            rows: const [
              DataRow(
                cells: [
                  DataCell(Text("1112")),
                  DataCell(Text("Koushik")),
                  DataCell(Text("Squad Head")),
                  DataCell(Text("1205")),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text("1113")),
                  DataCell(Text("Tushar")),
                  DataCell(Text("TimeBox")),
                  DataCell(Text("1175")),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text("1114")),
                  DataCell(Text("Samir Reaz")),
                  DataCell(Text("RoseTv")),
                  DataCell(Text("1155")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
