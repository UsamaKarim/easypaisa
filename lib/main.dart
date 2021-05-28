import 'package:easypaisa/app/ui/components/easypaisa_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        // statusBarIconBrightness: Brightness.dark,
        // statusBarBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      title: 'Easypaisa',
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xFF00BD5F),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: EasyPaisa(),
    );
  }
}
