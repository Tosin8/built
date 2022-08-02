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
            Row(
              children: [
                Image.asset('assets/images/logo.png'),
                const Spacer(),
                const Icon(Icons.notifications),
                const Icon(Icons.power_off),
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
                    fontSize: 25)),
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
            ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 40,
                  height: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/6.jpg'),
                        fit: BoxFit.fill),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
