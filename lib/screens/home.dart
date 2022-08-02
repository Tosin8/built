import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Column(
      children: [
        Row(
          children: [
            Image.asset(
              'assets/images/logo.png',
            ),
            Spacer(),
            Icon(Icons.notifications),
            Icon(Icons.poweroff),
          ],
        )
      ],
    ));
  }
}
