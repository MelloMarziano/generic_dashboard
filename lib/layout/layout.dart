import 'package:flutter/material.dart';
import 'package:generic_dashboard/constants/colors.dart';
import 'package:generic_dashboard/constants/padding.dart';
import 'package:generic_dashboard/layout/content_app.dart';
import 'package:generic_dashboard/layout/navbar.dart';
import 'package:generic_dashboard/layout/sidebar.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var finalWith = 0.0;
    if (widthScreen <= 390) {
      finalWith = widthScreen * 0.90;
    } else if (widthScreen > 390 && widthScreen < 420) {
      finalWith = widthScreen * 0.85;
    } else if (widthScreen > 420 && widthScreen < 900) {
      finalWith = widthScreen * 0.50;
    } else if (widthScreen > 900 && widthScreen < 1500) {
      finalWith = widthScreen * 0.20;
    }
    return Scaffold(
      drawer: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10,
        ),
        height: MediaQuery.of(context).size.height * 1,
        width: finalWith,
        child: SideBar(),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        child: SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Visibility(
                visible: widthScreen > 1500,
                child: Container(
                  padding: AppPadding.globalPadding,
                  height: MediaQuery.of(context).size.height * 1,
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: SideBar(),
                ),
              ),
              SizedBox(
                //padding: AppPadding.globalPadding,
                height: MediaQuery.of(context).size.height * 1,
                width:
                    (widthScreen > 1500) ? widthScreen * 0.85 : widthScreen * 1,
                child: Column(
                  children: const [
                    Navbar(),
                    ContentApp(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
