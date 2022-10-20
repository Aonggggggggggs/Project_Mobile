import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_project/main.dart';
import 'package:flutter_application_project/shop.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 209, 210, 211),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 134, 70),
        title: Text("เข้าสู่ระบบ"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("อีเมล์", style: TextStyle(fontSize: 15)),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("รหัสผ่าน", style: TextStyle(fontSize: 15)),
                  TextFormField(
                    obscureText: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Shopo();
                          }));
                        },
                        child: Text("เข้าสู่ระบบ"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
