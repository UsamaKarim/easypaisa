import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services(
      {Key? key,
      this.image = 'assets/send-money.jpg',
      this.title = 'Send Money'})
      : super(key: key);

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Image.asset(
          image,
          fit: BoxFit.cover,
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 11),
          ),
        )
      ],
    );
  }
}
