import 'package:elective1/constants/app_const.dart';
import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    final appConst = AppConst();
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(
              appConst.dash,
            ),
          ),
          const Text(
            "Flutter Dash",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          Text(
            "FLUTTER developer".toUpperCase(),
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          /* Container(
            margin: EdgeInsets.only(top: 10),
            height: 2,
            width: 100,
            color: Colors.grey,
          ),*/
          const Divider(
            color: Colors.grey,
            thickness: 2,
            indent: 155,
            endIndent: 155,
          ),
          const MyContainer(icon: Icons.phone, data: "+977 9876543210"),
          const MyContainer(icon: Icons.email, data: "example@gmail.com"),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key, required this.icon, required this.data});

  final IconData icon;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: Colors.white,
      height: 60,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              right: 25,
            ),
            child: Icon(
              icon,
              color: Colors.teal,
            ),
          ),
          Text(
            data,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
