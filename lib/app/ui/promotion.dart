import 'package:flutter/material.dart';

class Promotion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Promotions'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _PromoCard(image: 'assets/p1.jpg'),
          _PromoCard(image: 'assets/p2.jpg'),
          _PromoCard(image: 'assets/p3.jpg'),
          _PromoCard(image: 'assets/p4.png'),
          _PromoCard(image: 'assets/p5.jpg'),
        ],
      ),
    );
  }
}

class _PromoCard extends StatelessWidget {
  const _PromoCard({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4), topRight: Radius.circular(4)),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Telenor Double Value Social Bundle!',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'exclusively for New Easypaisa app users',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Read more',
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
