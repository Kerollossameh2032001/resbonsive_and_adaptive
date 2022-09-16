import 'package:flutter/material.dart';
import 'package:resbonsive/mobile_screen.dart';

import 'desktop_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //hello kero

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) {
          if (MediaQuery.of(context).size.width.toInt() <= 660) {
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 0.8),
                child: const MobileScreen());
          } else {
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.5),
                child: const DesktopScreen());
          }
        },
      ),
    );
  }
}
/*
 using LayoutBuilder
* LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.minWidth.toInt() <= 660) {
            return const MobileScreen();
          } else {
            return const DesktopScreen();
          }
        },
      )
* */
