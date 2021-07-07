import 'package:flutter/material.dart';

import 'components/account_tile.dart';

class MyAccount extends StatelessWidget {
  final VoidCallback onTap;

  const MyAccount({Key? key, required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: onTap,
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Account',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text('Profile, Settings & More'),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            height: 22,
                            width: 80,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Text(
                              'URDU',
                              // textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                // color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Text(
                              'ENG',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                      Text('V.2.7.5'),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).primaryColor),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/avatar.jpg'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'USAMA KARIM',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          // TODO: Replace this widget and check why can't i use space Between
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 10,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                // color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                      Text('03001234567'),
                      Text('example@example.com'),
                    ],
                  )
                ],
              ),
            ),
            AccountTile(icon: Icons.person, title: 'Account level'),
            AccountTile(icon: Icons.settings, title: 'Account settings'),
            AccountTile(icon: Icons.checklist, title: 'Transaction History'),
            AccountTile(icon: Icons.tapas_sharp, title: 'Goals & Rewards'),
            AccountTile(
                icon: Icons.check_circle_outline, title: 'My Approvals'),
            AccountTile(
                icon: Icons.alarm_rounded, title: 'Scheduled Transactions'),
            AccountTile(icon: Icons.star_border, title: 'My Favourites'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'HELP',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            AccountTile(icon: Icons.notification_add, title: 'Fee Details'),
            AccountTile(
                icon: Icons.medical_services_sharp, title: 'Help & FAQs'),
            AccountTile(
                icon: Icons.messenger_outline,
                title: 'Chat with Easypaisa Support'),
          ],
        ),
      ),
    );
  }
}
