// ignore_for_file: file_names, non_constant_identifier_names

import 'package:app_barber/pages/userLogin/loginMain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

status(BuildContext context) {
  return AppBar(
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
  );
}
