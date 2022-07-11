import 'package:flutter/material.dart';

class ChartCard extends StatelessWidget {
  final Color widgetColor;
  final String info;

  const ChartCard({
    super.key,
    required this.widgetColor,
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
      finalWith = widthScreen * 0.33;
    } else if (widthScreen > 1500) {
      finalWith = widthScreen * 0.40;
    }
    return Stack(
      fit: StackFit.passthrough,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 320,
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
          right: 20,
          child: Container(
            alignment: Alignment.center,
            height: 150,
            width: double.infinity,
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
          ),
        ),
      ],
    );
  }
}
