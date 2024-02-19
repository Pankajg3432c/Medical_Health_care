import 'package:flutter/material.dart';

class Navtools extends StatefulWidget {
  const Navtools({Key? key}) : super(key: key);

  @override
  State<Navtools> createState() => _NavtoolsState();
}

class _NavtoolsState extends State<Navtools> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ddghh')),
      body: ListTile(
        onTap: () {},
        leading: Container(
          decoration: BoxDecoration(shape: BoxShape.circle),
        ),
        title: Text("Profile"),
        trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}
