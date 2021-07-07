import 'package:flutter/material.dart';

import 'components/account_tile.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Account Settings',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Account Info, Settings & More',
                  ),
                  SizedBox(height: 30),
                  Text(
                    'ACCOUNT',
                  ),
                ],
              ),
            ),
            AccountTile(
              icon: Icons.person_remove_outlined,
              title: 'Account Information',
            ),
            AccountTile(
              icon: Icons.credit_card,
              title: 'Order New Debit Card',
            ),
            AccountTile(
              icon: Icons.credit_card,
              title: 'Change Easypaisa Account PIN',
            ),
            AccountTile(
              icon: Icons.credit_card,
              title: 'Link Telenor Microfinance Bank',
            ),
            AccountTile(
              icon: Icons.credit_card,
              title: 'Link Debit Card',
            ),
            AccountTile(
              icon: Icons.credit_card,
              title: 'Get Your Tax Certificate',
            ),
          ],
        ),
      ),
    );
  }
}
