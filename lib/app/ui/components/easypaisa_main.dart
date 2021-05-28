import 'package:easypaisa/app/ui/account.dart';
import 'package:easypaisa/app/ui/promotion.dart';
import 'package:flutter/material.dart';

import '../home_screen.dart';

class EasyPaisa extends StatefulWidget {
  @override
  _EasyPaisaState createState() => _EasyPaisaState();
}

class _EasyPaisaState extends State<EasyPaisa> {
  var _currentIndex = 0;

  final _navigatorKey = GlobalKey<NavigatorState>();

  void onTap(value) {
    switch (value) {
      case 0:
        _navigatorKey.currentState?.pushReplacementNamed('/');
        break;
      case 3:
        _navigatorKey.currentState?.pushReplacementNamed('/promotion');
        break;
      case 4:
        _navigatorKey.currentState?.pushReplacementNamed('/account');
        break;
    }

    setState(() => _currentIndex = value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: _BottomNavBar(
          currentIndex: _currentIndex,
          onTap: onTap,
        ),
        backgroundColor: Colors.white,
        body: Navigator(
          onGenerateRoute: generateRoute,
          key: _navigatorKey,
        ));
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/account":
        return MaterialPageRoute(builder: (context) => Account());
      case "/promotion":
        return MaterialPageRoute(builder: (context) => Promotion());
      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }
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
      showUnselectedLabels: true,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined), label: 'Cash Points'),
        BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'Scan Code'),
        BottomNavigationBarItem(
            icon: Icon(Icons.campaign_rounded), label: 'Promotion'),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'My Account',
        ),
      ],
    );
  }
}
