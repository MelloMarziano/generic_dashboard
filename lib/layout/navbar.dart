import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.centerLeft,
      height: MediaQuery.of(context).size.height * 0.10,
      width: (widthScreen > 1500) ? widthScreen * 0.85 : widthScreen * 1,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFfdfdfe),
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Row(
          children: [
            Visibility(
              visible: (widthScreen < 1500),
              child: IconButton(
                onPressed: () {
                  print(widthScreen);
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  Icons.menu_open,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
