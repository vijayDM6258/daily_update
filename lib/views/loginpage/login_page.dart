import 'dart:async';
import 'package:daily_update/utils/mytxtfield.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Future<void> checklogin() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool("IsLogin", true);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checklogin();
    Timer(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacementNamed(context, "/");
      },
    );
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 100),
        child: Column(
          children: [
            Container(
              child: Image.asset("assets/images/itunes.jpeg"),
            ),
            Text(
              "Welcome To iTunes",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: myTextfield(
                hntxt: "iCloud or Phone",
                abstxt: true,
                controller: emailController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: myTextfield(
                hntxt: "Enter Password",
                abstxt: true,
                controller: passwordController,
              ),
            ),
            InkWell(
              onTap: () {
                //  addddddd   Logic
              },
              child: Container(
                height: 50,
                width: 330,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  border: Border.all(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: WidgetStatePropertyAll(Colors.lightBlueAccent),
              ),
              onPressed: () {
                // adddd logic
              },
              child: Text("Forget Password !"),
            ),
          ],
        ),
      ),
    );
  }
}
