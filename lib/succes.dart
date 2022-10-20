import 'package:flutter/material.dart';
import 'package:flutter_application_project/home.dart';
import 'package:flutter_application_project/shop.dart';

class Succes extends StatelessWidget {
  const Succes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 209, 210, 211),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 134, 70),
        title: Text("เสร็จสิ้น"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "im/icon/correct.png",
                width: 100,
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "ชำระเสร็จสิ้น",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(100.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Shopo();
                      }));
                    },
                    icon: Icon(Icons.home),
                    label: Text("หน้าหลัก"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
