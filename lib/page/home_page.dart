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
          custommenu(imageAsset: "asset/persegip.jpg",title: "persegi"),
          custommenu(imageAsset: "asset/segitiga.jpg",title: "segitiga"),

        ],
      ),
    );
  }
}

class custommenu extends StatelessWidget {
  const custommenu({
    super.key, required this.imageAsset, required this.title,
  });
  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
          color: Colors.green
      ),
      child: Column(
        children: [
          Image.asset(
            imageAsset,
            height: 50
          ),
          Text(title),
        ],
      ),
    );
  }
}
