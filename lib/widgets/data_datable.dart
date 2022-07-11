import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class DataTableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var finalWith = 0.0;
    if (widthScreen <= 390) {
      finalWith = 380;
    } else if (widthScreen > 390 && widthScreen < 420) {
      finalWith = 300;
    } else if (widthScreen > 420 && widthScreen < 900) {
      finalWith = 380;
    } else if (widthScreen > 900 && widthScreen < 1500) {
      finalWith = widthScreen * 1;
    } else if (widthScreen > 1500) {
      finalWith = widthScreen * 1;
    }
    return Container(
      height: 400,
      width: finalWith,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: DataTable2(
        columnSpacing: 12,
        horizontalMargin: 12,
        minWidth: 600,
        columns: [
          DataColumn2(
            label: Text('Column A'),
            size: ColumnSize.L,
          ),
          DataColumn(
            label: Text('Column B'),
          ),
          DataColumn(
            label: Text('Column C'),
          ),
          DataColumn(
            label: Text('Column D'),
          ),
          DataColumn(
            label: Text('Column NUMBERS'),
            numeric: true,
          ),
        ],
        rows: List<DataRow>.generate(
          100,
          (index) => DataRow(
            cells: [
              DataCell(Text('A' * (10 - index % 10))),
              DataCell(Text('B' * (10 - (index + 5) % 10))),
              DataCell(Text('C' * (15 - (index + 5) % 10))),
              DataCell(Text('D' * (15 - (index + 10) % 10))),
              DataCell(Text(((index + 0.1) * 25.4).toString()))
            ],
          ),
        ),
      ),
    );
  }
}
