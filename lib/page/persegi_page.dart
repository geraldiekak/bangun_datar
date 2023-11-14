import 'package:bangun_datar_app/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
   PersegiPage({Key? key}) : super(key: key);
  final PersegiController _persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persegi Page"),

      ),
      body: Column(
        children: [
          Image.asset(
              "asset/persegip.jpg",
            height: 150,

          ),
          Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text("Persegi"),
    ),
    Text("Persegi atau bujur sangkar adalah bangun datar dua dimensi"),
          Padding(
            padding : const EdgeInsets.only(top:10.0),
            child: TextFormField(
              onChanged: (value){
                _persegiController.sisi=int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Sisi",
                  hintText: "Masukkan Sisi",
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
            _persegiController.hitungLuas();
    }, child:Text("Hitung Luas")),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: (Colors.cyan)
              ),
              onPressed: (){
            _persegiController.hitungKeliling();
          }, child:Text("Hitung keliling")),



              ],
          ),
          Obx(
                () => Text(
              _persegiController.hasil.value,
              style: TextStyle(
                color: _persegiController.isHitungLuas.value
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
