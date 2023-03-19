import 'package:bt_x/core/app_colors.dart';
import 'package:flutter/material.dart';

class LecturersInformationsScreen extends StatelessWidget {
  const LecturersInformationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 10.0,
          ),
          child: Column(
            children: [
              Text(
                "بيانات المحاضرين",
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
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.primary,
                      width: 8.0,
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Table(
                      textDirection: TextDirection.rtl,
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      border: TableBorder.all(
                        color: AppColors.primary,
                        width: 2.0,
                      ),
                      children: [
                        TableRow(
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                          ),
                          children: const [
                            Text(
                              "الكود",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "الاسم",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "المادة",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "الفرقة",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "التليفون",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Text(
                              "45464",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            FittedBox(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Text(
                                  "أحمد محمود",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  "المادة",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Divider(
                                  color: AppColors.primary,
                                  thickness: 2.0,
                                ),
                                Text(
                                  "المادة",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "الفرقة",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Divider(
                                  color: AppColors.primary,
                                  thickness: 2.0,
                                ),
                                Text(
                                  "الفرقة",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            FittedBox(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Text(
                                  "01234567891",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "إضافة محاضرين",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18.0,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
