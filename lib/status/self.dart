import 'package:flutter/material.dart';

class Self extends StatefulWidget {
  const Self({super.key});

  @override
  SelfState createState() => SelfState();
}

class SelfState extends State<Self> {
  bool active = false;

  void handleTap() {
    setState(() {
      active = !active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleTap,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.green[600],
        ),
        child: Center(
          child: Text(
            active ? "active" : "inactive",
            style: const TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
