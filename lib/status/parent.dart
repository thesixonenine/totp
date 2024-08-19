import 'package:flutter/material.dart';

class Parent extends StatefulWidget {
  const Parent({super.key});

  @override
  State createState() => _ParentState();
}

class _ParentState extends State<Parent> {
  bool active = false;

  void handleTapBoxChanged(bool newValue) {
    setState(() {
      active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.black,
      child: Son(
        active: active,
        onChanged: handleTapBoxChanged,
      ),
    );
  }
}

class Son extends StatelessWidget {
  const Son({super.key, this.active = false, required this.onChanged});

  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.grey[600],
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
