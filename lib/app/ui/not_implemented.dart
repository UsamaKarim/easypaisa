import 'package:flutter/material.dart';

class NotImplemented extends StatelessWidget {
  const NotImplemented({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Not Implemented',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
    );
  }
}
