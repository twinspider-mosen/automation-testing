import 'dart:ffi';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              key: ValueKey('email'),
              controller: emailController,
              decoration: InputDecoration(hintText: "Email"),
            ),
            TextFormField(
              key: ValueKey('password'),
              controller: passController,
              decoration: InputDecoration(hintText: "Password"),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(28.0),
        child: GestureDetector(
          key: ValueKey('login'),
          onTap: () {
            if (emailController.text == "mosen@email.com" &&
                passController.text == "mosen@1234") {
              print("Login Successfully");
            } else {
              print("Incorrect username and Password");
            }
          },
          child: Container(
            height: 50,
            width: double.infinity,
            color: Colors.red,
            child: Center(
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
