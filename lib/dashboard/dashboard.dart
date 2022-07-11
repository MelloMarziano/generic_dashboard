import 'package:flutter/material.dart';
import 'package:generic_dashboard/dashboard/chart_card.dart';
import 'package:generic_dashboard/dashboard/small_card.dart';
import 'package:generic_dashboard/widgets/data_datable.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var finalWith = 0.0;
    if (widthScreen <= 390) {
      finalWith = double.infinity;
    } else if (widthScreen > 390 && widthScreen < 420) {
      finalWith = 300;
    } else if (widthScreen > 420 && widthScreen < 900) {
      finalWith = 380;
    } else if (widthScreen > 900 && widthScreen < 1500) {
      finalWith = 380;
    } else if (widthScreen > 1500) {
      finalWith = 380;
    }
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        right: 20,
        left: 20,
      ),
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Center(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //direction: Axis.vertical,
                spacing: 20,
                runSpacing: 30,
                children: [
                  const SmallCard(
                    widgetColor: Colors.black,
                    icon: Icons.mail,
                    info: 'Esto es lo que dira',
                  ),
                  const SmallCard(
                    widgetColor: Color(0xFF358fed),
                    icon: Icons.mail,
                    info: 'Esto es lo que dira',
                  ),
                  const SmallCard(
                    widgetColor: Color(0xFF5fb562),
                    icon: Icons.mail,
                    info: 'Esto es lo que dira',
                  ),
                  const SmallCard(
                    widgetColor: Color(0xFFe73774),
                    icon: Icons.mail,
                    info: 'Esto es lo que dira',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              alignment: WrapAlignment.spaceBetween,
              runAlignment: WrapAlignment.spaceBetween,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //direction: Axis.vertical,
              spacing: 20,
              runSpacing: 30,
              children: [
                const ChartCard(
                  widgetColor: Color(0xFF358fed),
                  info: 'este e otro',
                ),
                const ChartCard(
                  widgetColor: Color(0xFF5fb562),
                  info: 'este e otro',
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            /*  Center(
             child: DataTableWidget(),
            ),*/
          ],
        ),
      ),
    );
  }
}
