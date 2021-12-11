// ignore_for_file: unused_import, prefer_const_constructors, avoid_print

import 'package:app_barber/pages/homePage/HomePageMain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_barber/pages/homePage/cardsRow.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  DateTime selectDate = DateTime.now();
  final firstDate = DateTime(2021, 12);
  final lastDate = DateTime(2022, 2);
  String dropdownValue = 'Corte simples';
  String dropdownValueTime = '8:00';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Text(
                "Agendamento BarberShop",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 17),
              ),
              Text("Escolha seu Atendente: "),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      height: 130,
                      width: MediaQuery.of(context).size.width - 76,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listBarbers.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: CircleAvatar(
                              radius: 53,
                              backgroundColor: Colors.black,
                              child: CircleAvatar(
                                child: Text(
                                  barbeiro[index],
                                  style: TextStyle(
                                    color: Colors.black,
                                    backgroundColor: Colors.blueGrey[50],
                                  ),
                                ),
                                radius: 50,
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
                padding: EdgeInsets.symmetric(vertical: 10),
              ),
              Text("Selecione seu corte:"),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
              ),
              DropdownButton<String>(
                isExpanded: true,
                alignment: Alignment.center,
                value: dropdownValue,
                elevation: 12,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.black,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>[
                  'Corte simples',
                  'Corte Dégradé',
                  'Corte com desenho artístico',
                  'Barba',
                  'Barba + Cabelo com corte básico',
                  'Barba + Cabelo des. artístico',
                  'Pigmentação',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    alignment: Alignment.center,
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontFamily: 'Poppins-Regular'),
                    ),
                  );
                }).toList(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
              ),
              Text("Veja os dias disponíveis e selecione o escolhido:"),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  onPressed: () => _openDatePicker(context),
                  child: const Text('Selecione o dia'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
              ),
              Text("Marque sua hora:"),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
              ),
              DropdownButton<String>(
                isExpanded: true,
                alignment: Alignment.center,
                value: dropdownValueTime,
                elevation: 12,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.black,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValueTime = newValue!;
                  });
                },
                items: <String>[
                  '8:00',
                  '8:30',
                  '9:00',
                  '9:30',
                  '10:00',
                  '10:30',
                  '11:00',
                  '11:30',
                  '14:00',
                  '14:30',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    alignment: Alignment.center,
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontFamily: 'Poppins-Regular'),
                    ),
                  );
                }).toList(),
              ),
              ElevatedButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text('Agendado com sucesso!'),
                    content: Text(
                      'Dia: $dataMarcada \nCorte:  $dropdownValue \nHorário: $dropdownValueTime',
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                ),
                child: Text('Concluido'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  late DateTime dataMarcada;

  _openDatePicker(BuildContext context) async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: selectDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    dataMarcada = date!;
  }
}
