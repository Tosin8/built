import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Image.asset('assets/images/logo.png'),
                  const Spacer(),
                  const Icon(Icons.notifications),
                  const Icon(Icons.power_off),
                ],
              ),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text('Good Morning',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black12,
                  )),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text('Choose your \nworkout today',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      letterSpacing: 1.5)),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              width: 120,
              height: 50,
              child: const TextField(
                  decoration: InputDecoration(
                      hintText: 'Search',
                      icon: Icon(
                        Icons.search,
                      ))),
            ),
            const Text('Recently Workouts',
                style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
