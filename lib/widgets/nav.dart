import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 50,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          BottomNavItem(
            title: 'Home',
            image: 'assets/icons/nav_icon/home.png',
            isActive: true,
          ),
          BottomNavItem(
            title: 'Analytics',
            image: 'assets/icons/nav_icon/analytics.png',
          ),
          BottomNavItem(
            title: 'Collection',
            image: 'assets/icons/nav_icon/collection.png',
          ),
          BottomNavItem(
            title: 'Home',
            image: 'assets/icons/nav_icon/settings.png',
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String title;
  final String image;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key? key,
    required this.title,
    required this.image,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image, color: isActive ? Colors.white : Colors.grey),
          Text(
            title,
            style: TextStyle(color: isActive ? Colors.white : Colors.grey),
          ),
        ],
      ),
    );
  }
}
