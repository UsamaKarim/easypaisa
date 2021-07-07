import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/ui/components/easypaisa_main.dart';
import 'app/ui/my_account.dart';

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
      home: _Main(),
    );
  }
}

class _Main extends StatefulWidget {
  const _Main({
    Key? key,
  }) : super(key: key);

  @override
  __MainState createState() => __MainState();
}

class __MainState extends State<_Main> {
  // var pageNumber = 1;
  PageController _controller = PageController(initialPage: 1);

  void onTap() {
    // setState(() => pageNumber = pageNumber == 0 ? 1 : 0);
    // _controller = PageController(initialPage: pageNumber);
    const duration = Duration(milliseconds: 600);
    const curve = Curves.linear;
    if (_controller.hasClients) {
      if (_controller.offset == 0)
        _controller.animateToPage(1, duration: duration, curve: curve);
      else
        _controller.animateToPage(0, duration: duration, curve: curve);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        MyAccount(onTap: onTap),
        EasyPaisa(onTap: onTap),
      ],
    );
  }
}
