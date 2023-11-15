import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green.shade300,
          title: Text(
            "Home Page",
            style: TextStyle(color: Colors.white),
          )),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(color: Colors.green),
            child: Text("Persegi"),
          ),
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(color: Colors.green),
            child: Text("Segitiga"),
          )
        ],
      ),
    );
  }
}
