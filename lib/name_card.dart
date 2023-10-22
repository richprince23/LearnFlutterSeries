import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  final String imgName;
  final String name;

  const NameCard({super.key, required this.imgName, required this.name});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(
            "assets/images/$imgName",
            width: 50,
            height: 50,
          ),
          const SizedBox(width: 50),
          Text(
            "$name",
            style: TextStyle(fontSize: 22),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                print("deleted");
              },
              icon: Icon(Icons.delete))
        ],
      ),
    );
  }
}
