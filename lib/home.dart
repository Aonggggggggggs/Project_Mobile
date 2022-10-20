import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_project/login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 209, 210, 211),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 134, 70),
        title: Text("ผักไม้ให้คุณ"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("im/icon/Organic_Soap__1_-removebg-preview.png"),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LoginScreen();
                    }));
                  },
                  icon: Icon(Icons.login),
                  label: Text("ผักไม้ให้คุณ"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
