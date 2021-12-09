// ignore_for_file: file_names, prefer_function_declarations_over_variables,

import 'package:flutter/material.dart';

class CardsRow extends StatefulWidget {
  const CardsRow({Key? key}) : super(key: key);

  @override
  _CardsRowState createState() => _CardsRowState();
}

class _CardsRowState extends State<CardsRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(),
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text.rich(
                    TextSpan(
                      text: 'Olá Walter,\n',
                      style: TextStyle(
                          fontFamily: 'poppins-regular',
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              'A BARBERSHOP agradece por dar preferência em nossos serviço,\n',
                          style: TextStyle(
                            fontFamily: 'poppins-regular',
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                          ),
                        ),
                        TextSpan(
                          text: '\nOque gostaria hoje?',
                          style: TextStyle(
                            fontFamily: 'poppins-regular',
                            color: Colors.red,
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        height: 150,
                        width: MediaQuery.of(context).size.width - 21,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: listBarbers.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                radius: 63,
                                backgroundColor: Colors.black,
                                child: CircleAvatar(
                                  radius: 60,
                                  backgroundImage: AssetImage(
                                    listBarbers[index],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 50,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            // Shadow position
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    height: MediaQuery.of(context).size.height / 2.4,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Image.asset(
                              listaServices[3],
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                              scale: 1,
                            ),
                          ),
                          height: MediaQuery.of(context).size.height / 3.3,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 8.8,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Row(
                                children: [
                                  CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                          AssetImage(listBarbers[5])),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Brayan Telles F.",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "23 de Novembro",
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const Icon(
                                Icons.more_vert,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 50,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            // Shadow position
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    height: MediaQuery.of(context).size.height / 2.4,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Image.asset(
                              listaServices[1],
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                              scale: 1,
                            ),
                          ),
                          height: MediaQuery.of(context).size.height / 3.3,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 8.8,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Row(
                                children: [
                                  CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                          AssetImage(listBarbers[2])),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Steve Maia",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "18 de Novembro",
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const Icon(
                                Icons.more_vert,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 50,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            // Shadow position
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    height: MediaQuery.of(context).size.height / 2.4,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Image.asset(
                              listaServices[0],
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                              scale: 1,
                            ),
                          ),
                          height: MediaQuery.of(context).size.height / 3.3,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 8.8,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Row(
                                children: [
                                  CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                          AssetImage(listBarbers[4])),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Jaison M. Strong",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "10 de Novembro",
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const Icon(
                                Icons.more_vert,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<String> listaServices = [
  'assets/images/barbaECabelo.jpg',
  'assets/images/barberBarber.jpg',
  'assets/images/barberStyle.jpg',
  'assets/images/pigmentHair.jpg',
  'assets/images/barberStyle.jpg',
  'assets/images/barberBarber.jpg',
  'assets/images/pigmentHair.jpg',
];

List<String> listBarbers = [
  'assets/images/barber1.jpg',
  'assets/images/barber2.jpg',
  'assets/images/barber3.jpg',
  'assets/images/barber4.jpg',
  'assets/images/barber5.jpg',
  'assets/images/barber6.jpg',
  'assets/images/barber7.jpg',
  'assets/images/barber8.jpg',
];
