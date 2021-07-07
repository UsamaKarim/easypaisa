import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../ui/components/indicator.dart';
import 'components/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.onTap}) : super(key: key);
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 30.0,
        brightness: Brightness.light,
        elevation: 0.0,
        backgroundColor: Color(0xFF0d894b),
        centerTitle: true,
        title: Image.asset(
          'assets/white_logo.png',
          fit: BoxFit.cover,
          height: 22,
        ),
        leading: GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.jpg'),
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
            size: 20,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.notifications_none,
            color: Colors.white,
            size: 20,
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  color: Color(0xFF0d894b),
                  height: 190,
                ),
                _FirstCard(), // Completed
                _SecondCard(),
              ],
            ),
            SizedBox(
              height: 38,
            ),
            Container(
              height: 30,
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[200],
              ),
              child: Row(
                children: [
                  Icon(Icons.monetization_on),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ONE RUPEE GAME',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 7,
                        ),
                      ),
                      Text(
                        'Buy amazing product for Rs.1 only.',
                        style: TextStyle(
                          fontSize: 7,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      'See more',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        letterSpacing: 1.5,
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Services(
                        title: 'Invite & Earn',
                      ),
                      Services(
                        title: 'Bus Tickets',
                      ),
                      Services(
                        title: 'Play Games',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Services(
                        title: 'Topups',
                      ),
                      Services(
                        title: 'Tohfa',
                      ),
                      Services(
                        title: 'More',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Indicator(),
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text(
                  'Promotions',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            CarouselSlider(
              options: CarouselOptions(
                // height: 250.0,
                disableCenter: true,
                enableInfiniteScroll: false,
                aspectRatio: 21 / 9,
                viewportFraction: 0.9,
              ),
              items: [
                _Promotions(image: 'assets/p1.jpg'),
                _Promotions(image: 'assets/p2.jpg'),
                _Promotions(image: 'assets/p3.jpg'),
                _Promotions(image: 'assets/p4.png'),
                _Promotions(image: 'assets/p5.jpg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Promotions extends StatelessWidget {
  const _Promotions({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(image, fit: BoxFit.cover)));
  }
}

class _SecondCard extends StatelessWidget {
  const _SecondCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -40,
      left: 0,
      right: 0,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
        elevation: 2.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Services(),
            Services(
              image: 'assets/easyload.jpg',
              title: 'Easyload',
            ),
            Services(
              image: 'assets/mobile-packages.jpg',
              title: 'Mobile Packages',
            ),
            Services(
              image: 'assets/bill_payment.jpg',
              title: 'Bill Payment',
            ),
          ],
        ),
      ),
    );
  }
}

class _FirstCard extends StatelessWidget {
  const _FirstCard({Key? key}) : super(key: key);

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
                    height: 19,
                  ),
                ),
                const Text('USAMA KARIM', style: TextStyle(fontSize: 13)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: const Text(
                    '03001234567',
                    style: const TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
                const Text('Sign in to your easypaisa account'),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 40,
                ),
                InputChip(
                  label: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 13),
                  ),
                  labelStyle: TextStyle(color: Colors.white),
                  labelPadding: EdgeInsets.symmetric(horizontal: 28.0),
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
