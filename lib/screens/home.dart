import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/images/logo.png'),
              const Spacer(),
              const Icon(Icons.notifications),
              const Icon(Icons.switch_account),
            ],
          ),
          const Text('Good Morning',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black12,
              )),
          const Text('Choose your \n workout today',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25))
        ],
      )),
    );
  }
}
