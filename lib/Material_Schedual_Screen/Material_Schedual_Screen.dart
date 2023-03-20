import 'package:bt_x/core/app_colors.dart';
import 'package:bt_x/presentation/provider/material_Schedule_provider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class MaterialsScheduleScreen extends StatelessWidget {
  const MaterialsScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final materialsScheduleProvider =
        Provider.of<MaterialsScheduleProvider>(context);
    List<TableRow> tableRows = materialsScheduleProvider.tableRows;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 10.0,
            ),
            child: Column(children: [
              Text(
                "جدول المواد",
                style: TextStyle(
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Expanded(
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.primary,
                        width: 12.0,
                      ),
                    ),
                    child: Table(
                      textDirection: TextDirection.rtl,
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      border: TableBorder.all(
                        color: AppColors.primary,
                        width: 2.0,
                      ),
                      children: tableRows,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
