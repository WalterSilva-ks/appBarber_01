// ignore_for_file: avoid_unnecessary_containers, deprecated_member_use, duplicate_ignore, unused_import

import 'package:app_barber/pages/homePage/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade100,
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        // decoration: BoxDecoration(color: Colors.blueGrey.shade100),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: 500,
                color: Colors.transparent,
                child: SvgPicture.asset(
                  'assets/images/barberLogo.svg',
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        spreadRadius: 2,
                        offset: const Offset(1, 1),
                        blurRadius: 10,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  // ignore: duplicate_ignore
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 15),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(left: 15),
                      child: const Text(
                        "Entrar",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(bottom: 25),
                    ),
                    Form(
                      child: Column(
                        children: [
                          TextFormField(
                            cursorColor: Colors.black,
                            autofocus: true,
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              labelText: "E-mail",
                              labelStyle: const TextStyle(color: Colors.black),
                              prefixIcon: const Icon(Icons.mail_outline,
                                  color: Colors.black),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                // ignore: prefer_const_constructors
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                // ignore: prefer_const_constructors
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                          ),
                          TextFormField(
                            cursorColor: Colors.black,
                            obscureText: true,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              labelText: "Senha",
                              labelStyle: const TextStyle(color: Colors.black),
                              prefixIcon: const Icon(Icons.vpn_key,
                                  color: Colors.black),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                // ignore: prefer_const_constructors
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                // ignore: prefer_const_constructors
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(left: 15),
                      child: GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Esqueceu a senha?",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      // ignore: deprecated_member_use
                    ),
                    // ignore: deprecated_member_use
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      child: RaisedButton(
                        onPressed: () {},
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.black,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                    ),
                    // ignore: deprecated_member_use
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
