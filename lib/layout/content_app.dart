import 'package:flutter/material.dart';

class ContentApp extends StatelessWidget {
  const ContentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
      ),
      height: MediaQuery.of(context).size.height * 0.90,
      width: (widthScreen > 1500) ? widthScreen * 0.85 : widthScreen * 1,
      child: Text('Esto es content'),
      color: Colors.green,
    );
  }
}
