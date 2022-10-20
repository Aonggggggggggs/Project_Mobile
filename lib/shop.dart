import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_project/buy.dart';
import 'package:flutter_application_project/constants.dart';
import 'package:flutter_application_project/product.dart';

List<Product> menu = [
  Product("กล้วย", '15', "assets/imges/กล้วย.png"),
  Product("องุ่น", '20', "assets/imges/องุ่น.png"),
  Product("ผักชี", '3', "assets/imges/ผักชี.png"),
  Product("แตงโม", '30', "assets/imges/แตงโม.jpg"),
  Product("ส้ม", '25', "assets/imges/ส้ม.png"),
  Product("แตงกวา", '5', "assets/imges/แตงกวา.png"),
  Product("ขนุน", '30', "assets/imges/ขนุน.png"),
  Product("มะนาว", '3', "assets/imges/มะนาว.png"),
  Product("แครอท", '10', "assets/imges/แครอท.png"),
  Product("มะเขือเทศ", '5', "assets/imges/มะเขือเทศ.png"),
  Product("มะม่วง", '15', "assets/imges/มะม่วง.png")
];

class Shopo extends StatelessWidget {
  const Shopo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 209, 210, 211),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 68, 134, 70),
          title: Text('ผักผลไม้'),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
            SizedBox(
              width: kDefaultPaddin / 2,
            )
          ],
        ),
        body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) {
            Product food = menu[index];
            return ListTile(
              leading: Image.asset(food.img),
              title: Text(
                food.name,
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text("ราคา " + food.price + 'บ.'),
              onTap: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Buy();
              })),
            );
          },
        ));
  }
}
