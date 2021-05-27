import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'indicator.dart';
import 'components/first_card.dart';

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
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: _BottomNavBar(),
      appBar: AppBar(
        brightness: Brightness.light,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Image.asset('assets/easypaisa-logo.png'),
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/avatar.jpg'),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            FirstCard(),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
              elevation: 2.0,
              child: Container(
                height: _mediaQuery.height * 0.13,
                child: GridView.count(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 4,
                  children: [
                    Services(),
                    Services(),
                    Services(),
                    Services(),
                  ],
                ),
              ),
            ),
            Container(
              height: _mediaQuery.height * 0.35,
              child: PageView(
                children: [
                  GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    crossAxisCount: 3,
                    children: [
                      Services(),
                      Services(),
                      Services(),
                      Services(),
                    ],
                  ),
                ],
              ),
            ),
            Indicator(),
            CarouselSlider(
              options: CarouselOptions(height: 300.0),
              items: [],
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30,
      selectedItemColor: Theme.of(context).primaryColor,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined), label: 'Cash Points'),
      ],
    );
  }
}

class Services extends StatelessWidget {
  const Services(
      {Key key,
      this.image = 'assets/send-money.jpg',
      this.title = 'Send Money'})
      : super(key: key);

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
        )
      ],
    );
  }
}
