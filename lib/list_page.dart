import 'package:elective1/class_list.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  ListPage({super.key});

  List<String> stringList = ["Ram", "Sita", "Laxman"];
  List<Map> mapList = [
    {"name": "Ram", "address": "Baneshwor"},
    {"name": "Sita", "address": "Janakpur"},
    {"name": "Laxman", "address": "Ayodhya"}
  ];

  String data = "HariRam";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Page"),
      ),
      body: Column(
        children: [
          ...stringList.map((e) => Text(e)),
          ...mapList.map(
            (e) => Card(
              color: Colors.green,
              child: Text(
                e["name"] + "\n" + e["address"],
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ),
          ...ClassList.classList.map(
            (e) => Text(
              "This is ${e.name} ${e.address}",
              style: const TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}
