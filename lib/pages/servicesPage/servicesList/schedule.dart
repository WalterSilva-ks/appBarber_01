// ignore_for_file: unused_import, prefer_const_constructors, avoid_print

import 'package:app_barber/pages/homePage/HomePageMain.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          width: MediaQuery.of(context).size.width - 50,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              DropdownButton<String>(
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
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                onPressed: () => _openDatePicker(context),
                child: const Text('Selecione o dia'),
              )
            ],
          ),
        ),
      ),
    );
  }

  _openDatePicker(BuildContext context) async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: selectDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    print('date $date');
  }
}
