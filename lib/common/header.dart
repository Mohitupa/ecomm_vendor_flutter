import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/images/logo.png",
          height: 50,
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(
            Icons.shopping_cart,
            color: Color.fromARGB(255, 6, 20, 92),
          ),
          onPressed: () {
            // Add your cart icon tap logic here
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.location_on,
            color: Color.fromARGB(255, 6, 20, 92),
          ),
          onPressed: () {
            // Add your location icon tap logic here
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.account_circle,
            color: Color.fromARGB(255, 6, 20, 92),
          ),
          onPressed: () {
            // Add your signup/login icon tap logic here
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.notifications,
            color: Color.fromARGB(255, 6, 20, 92),
          ),
          onPressed: () {
            // Add your notification icon tap logic here
          },
        ),
      ],
    );
  }
}
