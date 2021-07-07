import 'package:easypaisa/app/ui/account.dart';
import 'package:easypaisa/app/ui/promotion.dart';
import 'package:flutter/material.dart';

import '../home_screen.dart';

class EasyPaisa extends StatefulWidget {
  const EasyPaisa({Key? key, required this.onTap}) : super(key: key);
  final VoidCallback onTap;

  @override
  _EasyPaisaState createState() => _EasyPaisaState();
}

class _EasyPaisaState extends State<EasyPaisa> {
  var _currentIndex = 0;

  // final _navigatorKey = GlobalKey<NavigatorState>();

  void onTap(int value) {
    // switch (value) {
    //   case 0:
    //     _navigatorKey.currentState?.pushReplacementNamed('/');
    //     break;
    //   case 3:
    //     _navigatorKey.currentState?.pushReplacementNamed('/promotion');
    //     break;
    //   case 4:
    //     _navigatorKey.currentState?.pushReplacementNamed('/account');
    //     break;
    // }
    // if (_currentIndex == value)
    // _navigatorKey.currentState?.popUntil((route) => route.isFirst);

    setState(() => _currentIndex = value);
  }

  final _navigatorKey = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  Widget _buildOffstageNavigator(int index) {
    return Offstage(
        offstage: _currentIndex != index,
        child: Navigate(
          onTap: widget.onTap,
          navigatorKey: _navigatorKey[index],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: _BottomNavBar(
          currentIndex: _currentIndex,
          onTap: onTap,
        ),
        backgroundColor: Colors.white,
        body: Stack(
          children:
              allPages.map((e) => _buildOffstageNavigator(e.index)).toList(),
          // onGenerateRoute: generateRoute,
          // key: _navigatorKey,
        ));
  }

  // Route<dynamic> generateRoute(RouteSettings settings) {
  //   return MaterialPageRoute(
  //     builder: (context) {
  //       switch (settings.name) {
  //         case "/account":
  //           return Account();
  //         case "/promotion":
  //           return Promotion();
  //         default:
  //           return HomeScreen(onTap: widget.onTap);
  //       }
  //     },
  //   );
  // }
}

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  final int currentIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      iconSize: 20,
      currentIndex: currentIndex,
      unselectedItemColor: Colors.black54,
      selectedItemColor: Theme.of(context).primaryColor,
      onTap: onTap,
      items: allPages
          .map(
              (e) => BottomNavigationBarItem(icon: Icon(e.icon), label: e.title)

              //  [
              //   BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              //   BottomNavigationBarItem(
              //       icon: Icon(Icons.location_on_outlined), label: 'Cash Points'),
              //   BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'Scan Code'),
              //   BottomNavigationBarItem(
              //       icon: Icon(Icons.campaign_rounded), label: 'Promotion'),
              //   BottomNavigationBarItem(
              //     icon: Icon(Icons.person_outline),
              //     label: 'My Account',
              //   ),
              // ],
              )
          .toList(),
    );
  }
}

class Navigate extends StatelessWidget {
  const Navigate({Key? key, required this.onTap, required this.navigatorKey})
      : super(key: key);

  final VoidCallback onTap;
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: '/',
      onGenerateRoute: generateRoute,
    );
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) {
        switch (settings.name) {
          // case '/':
          //   return HomeScreen(onTap: onTap);
          case "/account":
            return Account();
          case "/promotion":
            return Promotion();
          default:
            return HomeScreen(onTap: onTap);
        }
      },
    );
  }
}

class Pages {
  const Pages(this.index, this.title, this.icon, this.color);
  final int index;
  final String title;
  final IconData icon;
  final MaterialColor color;
}

const List<Pages> allPages = <Pages>[
  Pages(0, 'Home', Icons.home, Colors.teal),
  Pages(1, 'Cash Points', Icons.location_on_outlined, Colors.teal),
  Pages(2, 'Scan Code', Icons.qr_code, Colors.teal),
  Pages(3, 'Promotion', Icons.campaign_rounded, Colors.orange),
  Pages(4, 'My Account', Icons.person_outlined, Colors.blue)
];

// items: [
//     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//     BottomNavigationBarItem(
//         icon: Icon(Icons.location_on_outlined), label: 'Cash Points'),
//     BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'Scan Code'),
//     BottomNavigationBarItem(
//         icon: Icon(Icons.campaign_rounded), label: 'Promotion'),
//     BottomNavigationBarItem(
//       icon: Icon(Icons.person_outline),
//       label: 'My Account',
//     ),
//   ],
