import 'package:bangun_datar_app/controller/panjang_controller.dart';
import 'package:bangun_datar_app/controller/persegi_controller.dart';
import 'package:bangun_datar_app/controller/segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage({Key? key}) : super(key: key);
  final SegitigaController _segitigaController = Get.put(SegitigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segitiga Page"),

      ),
      body: Column(
        children: [
          Image.asset(
            "asset/segitiga.jpg",
            height: 150,

          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text("Segitiga"),
          ),
          Text("memiliki dua sisi dengan panjang yang sama. Segitiga sama kaki juga memiliki dua sudut dengan ukuran yang sama, yaitu sudut yang berlawanan dengan dua sisi dengan panjang yang sama; fakta ini adalah isi dari teorema segitiga sama kaki,"),
          Padding(
            padding : const EdgeInsets.only(top:10.0),
            child: TextFormField(
              onChanged: (value){
                _segitigaController.alas=int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "alas",
                  hintText: "Masukkan alas",
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
                _segitigaController.tinggi=int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "tinggi",
                  hintText: "Masukkan tinggi",
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
                    _segitigaController.hitungLuas();
                  }, child:Text("Hitung Luas")),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: (Colors.cyan)
                  ),
                  onPressed: (){
                    _segitigaController.hitungKeliling();
                  }, child:Text("Hitung keliling")),



            ],
          ),
          Obx(
                () => Text(
              _segitigaController.hasil.value,
              style: TextStyle(
                color: _segitigaController.isHitungLuas.value
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
