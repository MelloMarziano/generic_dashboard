import 'package:flutter/material.dart';
import 'package:generic_dashboard/dashboard/chart_card.dart';
import 'package:generic_dashboard/dashboard/small_card.dart';
import 'package:generic_dashboard/widgets/data_datable.dart';
import 'package:responsive_ui/responsive_ui.dart';

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
            const Responsive(
              crossAxisAlignment: WrapCrossAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //direction: Axis.vertical,

              runSpacing: 30,
              children: [
                Div(
                  divison: Division(
                    colXS: 12,
                    colM: 6,
                    colL: 3,
                  ),
                  child: SmallCard(
                    widgetColor: Color.fromARGB(255, 6, 158, 46),
                    icon: Icons.mail,
                    info: 'Esto es lo que dira',
                  ),
                ),
                Div(
                  divison: Division(
                    colXS: 12,
                    colM: 6,
                    colL: 3,
                  ),
                  child: SmallCard(
                    widgetColor: Color.fromARGB(255, 197, 19, 3),
                    icon: Icons.mail,
                    info: 'Esto es lo que dira',
                  ),
                ),
                Div(
                  divison: Division(
                    colXS: 12,
                    colM: 6,
                    colL: 3,
                  ),
                  child: SmallCard(
                    widgetColor: Color(0xFF358fed),
                    icon: Icons.mail,
                    info: 'Esto es lo que dira',
                  ),
                ),
                Div(
                  divison: Division(
                    colXS: 12,
                    colM: 6,
                    colL: 3,
                  ),
                  child: SmallCard(
                    widgetColor: Colors.black,
                    icon: Icons.mail,
                    info: 'Esto es lo que dira',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Responsive(
              //crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              alignment: WrapAlignment.spaceBetween,
              //runAlignment: WrapAlignment.spaceBetween,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //direction: Axis.vertical,

              runSpacing: 30,
              children: [
                Div(
                  divison: const Division(
                    colXS: 12,
                    colM: 12,
                    colL: 4,
                  ),
                  child: ChartCard(
                    widgetColor: Colors.green,
                    info: 'este e otro',
                    ctnx: context,
                  ),
                ),
                Div(
                  divison: const Division(
                    colXS: 12,
                    colM: 12,
                    colL: 4,
                  ),
                  child: ChartCard(
                    widgetColor: const Color(0xFF358fed),
                    info: 'este e otro',
                    ctnx: context,
                  ),
                ),
                Div(
                  divison: const Division(
                    colXS: 12,
                    colM: 12,
                    colL: 4,
                  ),
                  child: ChartCard(
                    widgetColor: Colors.red,
                    info: 'este e otro',
                    ctnx: context,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Responsive(
              children: [
                Div(
                  divison: const Division(
                    colXS: 12,
                    colM: 12,
                    colL: 12,
                  ),
                  child: DataTableWidget(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
