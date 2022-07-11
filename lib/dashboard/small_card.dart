import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  final Color widgetColor;
  final IconData icon;
  final String info;

  const SmallCard({
    super.key,
    required this.widgetColor,
    required this.icon,
    required this.info,
  });

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
      finalWith = 300;
    } else if (widthScreen > 1500) {
      finalWith = 380;
    }
    return Stack(
      fit: StackFit.passthrough,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 130,
          width: finalWith,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            /* boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 8,
                offset: const Offset(
                  0,
                  0,
                ), // changes position of shadow
              ),
            ],*/
          ),
        ),
        Positioned(
          top: -15,
          left: 20,
          child: Container(
            alignment: Alignment.center,
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: widgetColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: widgetColor.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: const Offset(
                    0,
                    0,
                  ), // changes position of shadow
                ),
              ],
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 32,
            ),
          ),
        ),
      ],
    );
  }
}
