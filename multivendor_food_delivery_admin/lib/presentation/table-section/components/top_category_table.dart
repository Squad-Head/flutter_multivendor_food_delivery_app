import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopCategoryTable extends StatelessWidget {
  const TopCategoryTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: SizedBox(
        height: 200.h,
        child: DataTable2(
          columnSpacing: 12.w,
          horizontalMargin: 12.w,
          minWidth: 250.w,
          columns: const [
            DataColumn2(label: Text("ID")),
            DataColumn(label: Text("Category")),
            DataColumn(label: Text("Total")),
          ],
          rows: const [
            DataRow(
              cells: [
                DataCell(Text("1005")),
                DataCell(Text("Pizza")),
                DataCell(Text("1205")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text("1006")),
                DataCell(Text("Burger")),
                DataCell(Text("1175")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text("1006")),
                DataCell(Text("Chikcen Fry")),
                DataCell(Text("1034")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
