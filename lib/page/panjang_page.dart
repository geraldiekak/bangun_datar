import 'package:bangun_datar_app/controller/panjang_controller.dart';
import 'package:bangun_datar_app/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PanjangPage extends StatelessWidget {
  PanjangPage({Key? key}) : super(key: key);
  final PanjangController _panjangController = Get.put(PanjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Panjang Page"),

      ),
      body: Column(
        children: [
          Image.asset(
            "asset/persegip.jpg",
            height: 150,

          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text("Persegi panjang"),
          ),
          Text("Persegi panjang atau bujur sangkar adalah bangun datar dua dimensi"),
          Padding(
            padding : const EdgeInsets.only(top:10.0),
            child: TextFormField(
              onChanged: (value){
                _panjangController.panjang=int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "panjang",
                  hintText: "Masukkan panjang",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          Padding(
            padding : const EdgeInsets.only(top:10.0),
            child: TextFormField(
              onChanged: (value){
                _panjangController.lebar=int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "lebar",
                  hintText: "Masukkan lebar",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[



              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: (Colors.blue)
                  ),
                  onPressed: (){
                    _panjangController.hitungLuas();
                  }, child:Text("Hitung Luas")),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: (Colors.cyan)
                  ),
                  onPressed: (){
                    _panjangController.hitungKeliling();
                  }, child:Text("Hitung keliling")),



            ],
          ),
          Obx(
                () => Text(
              _panjangController.hasil.value,
              style: TextStyle(
                color: _panjangController.isHitungLuas.value
                    ? Colors.redAccent
                    : Colors.greenAccent,
              ),
            ),
          ),

        ],
      ),
    );

  }
}
