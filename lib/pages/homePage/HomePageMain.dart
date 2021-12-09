// ignore_for_file: file_names

import 'package:app_barber/pages/UserPage/userPage.dart';
import 'package:app_barber/pages/homePage/homeScreen.dart';
import 'package:app_barber/pages/recents/recentsPage.dart';
import 'package:app_barber/pages/servicesPage/servicesPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_barber/pages/userLogin/loginMain.dart';

class RecentsMain extends StatefulWidget {
  const RecentsMain({Key? key}) : super(key: key);

  @override
  _RecentsMainState createState() => _RecentsMainState();
}

class _RecentsMainState extends State<RecentsMain> {
  int paginaAtual = 0;
  late PageController controllerPage;

  @override
  void initState() {
    super.initState();
    controllerPage = PageController(initialPage: paginaAtual);
  }

  setPaginaAtual(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55.0),
        child: AppBar(
          title: SvgPicture.asset(
            'assets/images/barberLogo.svg',
            color: Colors.white,
          ),
          backgroundColor: Colors.black,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginMain(),
                    ));
              },
              icon: const Icon(Icons.login_outlined),
            )
          ],
        ),
      ),
      body: PageView(
        controller: controllerPage,
        children: const [
          HomeScreen(),
          RecentsStorePage(),
          ServicesPage(),
          UserPage(),
        ],
        onPageChanged: setPaginaAtual,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        currentIndex: paginaAtual,
        elevation: 5,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.access_time_sharp,
              color: Colors.white,
            ),
            label: 'Recentes',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment,
              color: Colors.white,
            ),
            label: 'Atendimento',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: 'Minha conta',
          ),
        ],
        onTap: (pagina) {
          controllerPage.animateToPage(pagina,
              duration: const Duration(microseconds: 550),
              curve: Curves.easeInOut);
        },
        backgroundColor: Colors.black,
      ),
    );
  }
}
