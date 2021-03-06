// ignore_for_file: file_names, avoid_print

import 'package:app_barber/pages/servicesPage/servicesList/schedule.dart';
import 'package:flutter/material.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        mainAxisSpacing: 50,
        crossAxisSpacing: 0,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: const CircleAvatar(
                    backgroundColor: Colors.black,
                    maxRadius: 50,
                    child: Icon(
                      Icons.event_note_outlined,
                      size: 70,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          width: MediaQuery.of(context).size.width - 50,
                          height: 400,
                          child: const Schedule(),
                        )
                      ],
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                const Text(
                  'Agendar hor??rio',
                  style: TextStyle(fontFamily: 'poppins-regular', fontSize: 15),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: const CircleAvatar(
                    backgroundColor: Colors.black,
                    maxRadius: 50,
                    child: Icon(Icons.cut_sharp, size: 70, color: Colors.white),
                  ),
                  onTap: () {
                    setState(() {
                      print('Servi??os');
                    });
                  },
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                const Text(
                  'Servi??os',
                  style: TextStyle(fontFamily: 'poppins-regular', fontSize: 15),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: const CircleAvatar(
                    backgroundColor: Colors.black,
                    maxRadius: 50,
                    child:
                        Icon(Icons.event_sharp, size: 70, color: Colors.white),
                  ),
                  onTap: () {
                    setState(() {
                      print('Minha agenda');
                    });
                  },
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                const Text(
                  'Minha agenda',
                  style: TextStyle(fontFamily: 'poppins-regular', fontSize: 15),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: const CircleAvatar(
                    backgroundColor: Colors.black,
                    maxRadius: 50,
                    child: Icon(Icons.pending_actions,
                        size: 70, color: Colors.white),
                  ),
                  onTap: () {
                    setState(() {
                      print('Meus recentes');
                    });
                  },
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                const Text(
                  'Meus recentes',
                  style: TextStyle(fontFamily: 'poppins-regular', fontSize: 15),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
