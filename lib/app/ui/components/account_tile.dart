import 'package:flutter/material.dart';

class AccountTile extends StatelessWidget {
  const AccountTile({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Theme.of(context).primaryColor,
      ),
      title: Text(title),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
      ),
    );
  }
}
