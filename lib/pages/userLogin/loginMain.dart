// ignore_for_file: file_names

import 'package:app_barber/pages/userLogin/createUser.dart';
import 'package:app_barber/pages/userLogin/login.dart';
import 'package:flutter/material.dart';

class LoginMain extends StatefulWidget {
  const LoginMain({Key? key}) : super(key: key);

  @override
  _LoginMainState createState() => _LoginMainState();
}

class _LoginMainState extends State<LoginMain> {
  int paginaAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  setPaginaAtual(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        children: const [
          LoginScreen(),
          CreateUserScreen(),
        ],
        onPageChanged: setPaginaAtual,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        currentIndex: paginaAtual,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.login_outlined,
            ),
            label: "Login",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.create,
              ),
              label: "Cadastre-se"),
        ],
        onTap: (pagina) {
          pc.animateToPage(
            pagina,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
        backgroundColor: Colors.white,
      ),
    );
  }
}
