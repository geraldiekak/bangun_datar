import 'package:bangun_datar_app/page/lingkaran_page.dart';
import 'package:bangun_datar_app/page/panjang_page.dart';
import 'package:bangun_datar_app/page/persegi_page.dart';
import 'package:bangun_datar_app/page/segitiga_page.dart';
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
      body: ListView(
        children: [
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPage()));
    },
              child: custommenu(imageAsset: "asset/persegip.jpg",title: "persegi")),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PanjangPage()));
              },
              child: custommenu(imageAsset: "asset/persegipanjang.png",title: "persegi panjang")),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SegitigaPage()));
              },
              child: custommenu(imageAsset: "asset/segitiga.jpg",title: "segitiga")),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LingkaranPage()));
              },
              child: custommenu(imageAsset: "asset/lingkaran.jpg",title: "lingkaran")),
          Row(
            children: [
              Expanded(child: custommenu(imageAsset: "asset/segitiga.jpg",title: "segitiga")),
              Expanded(child: custommenu(imageAsset: "asset/segitiga.jpg",title: "segitiga")),
              Expanded(child: custommenu(imageAsset: "asset/segitiga.jpg",title: "segitiga")),

            ],
          ),

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
