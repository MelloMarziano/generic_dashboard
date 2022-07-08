import 'package:flutter/material.dart';
import 'package:generic_dashboard/dashboard/small_card.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        right: 20,
        left: 20,
      ),
      height: double.infinity,
      width: double.infinity,
      child: Flex(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
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
    );
  }
}
