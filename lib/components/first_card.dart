import 'package:flutter/material.dart';

class FirstCard extends StatelessWidget {
  const FirstCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Image.asset(
                    'assets/easypaisa-logo.png',
                    height: 25,
                  ),
                ),
                const Text('USAMA KARIM', style: TextStyle(fontSize: 16)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: const Text(
                    '03001234567',
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                const Text('Sign in to your easypaisa account'),
              ],
            ),
            Column(
              children: [
                InputChip(
                  label: Text('Sign In'),
                  labelStyle: TextStyle(color: Colors.white),
                  labelPadding: EdgeInsets.symmetric(horizontal: 25.0),
                  backgroundColor: Theme.of(context).primaryColor,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
