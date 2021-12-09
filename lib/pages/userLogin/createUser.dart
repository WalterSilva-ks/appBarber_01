// ignore_for_file: file_names, deprecated_member_use, duplicate_ignore

import 'package:flutter/material.dart';

class CreateUserScreen extends StatefulWidget {
  const CreateUserScreen({Key? key}) : super(key: key);

  @override
  _CreateUserScreenState createState() => _CreateUserScreenState();
}

class _CreateUserScreenState extends State<CreateUserScreen> {
  bool isChecked = false;
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
                        "Criar conta",
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
                              labelText: "Usuário",
                              labelStyle: const TextStyle(color: Colors.black),
                              prefixIcon: const Icon(
                                  Icons.perm_identity_outlined,
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
                            autofocus: true,
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              labelText: "Telefone",
                              labelStyle: const TextStyle(color: Colors.black),
                              prefixIcon: const Icon(Icons.phone_outlined,
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
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                          ),
                          TextFormField(
                            cursorColor: Colors.black,
                            obscureText: true,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              labelText: "Confirme a senha",
                              labelStyle: const TextStyle(color: Colors.black),
                              prefixIcon: const Icon(Icons.vpn_key_outlined,
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
                    SizedBox(
                      width: double.infinity,
                      child: CheckboxListTile(
                        title: const Text(
                          'Receber notícias e promoções',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontWeight: FontWeight.normal),
                        ),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(bottom: 25),
                    ),

                    // ignore: deprecated_member_use
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      child: RaisedButton(
                        onPressed: () {},
                        child: const Text(
                          "Cadastrar",
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
                      padding: EdgeInsets.only(bottom: 10),
                    ),
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
