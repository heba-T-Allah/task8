import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final userName;
  final password;

  const SecondScreen({super.key,required this.userName,required this.password});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: [
        SizedBox(height: 40),
        Center(
          child: Text(
              "Welcome ${widget.userName} your password is ${widget.password}"),
        ),
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("back"),
        )
      ]),
    );
  }
}
