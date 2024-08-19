import 'package:flutter/material.dart';

class TotpList extends StatefulWidget {
  const TotpList({super.key, required this.title});

  final String title;

  @override
  State<TotpList> createState() => _TotpListState();
}

class _TotpListState extends State<TotpList> {
  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    for (var i = 0; i < 20; i++) {
      children.add(ListTile(
        leading: const Icon(Icons.key),
        title: Text(i.toString()),
        textColor: Colors.red,
        subtitle: Text("Sub $i"),
        subtitleTextStyle: const TextStyle(fontSize: 20, color: Colors.blue),
      ));
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(children: children));
  }
}
