import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator Page"),
      ),
      body: Column(
        children: [
          Text("Welcome to the Kalkulator Page", style: TextStyle(fontSize: 24, color: Colors.blue, fontStyle: FontStyle.italic)),
          Container(
            margin: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(hint: Text("input first number"))),
          ),
          Container(
            margin: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(hint: Text("input second number"))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {},child : Text("Add")),
              ElevatedButton(onPressed: () {},child : Text("Subtract")),
              ElevatedButton(onPressed: () {},child : Text("Multiply")),
              ElevatedButton(onPressed: () {},child : Text("Divide")),
            ],
            ),
          ],
        ),
    );
  }
}