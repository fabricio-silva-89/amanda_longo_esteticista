import 'package:amanda_longo_esteticista/section/about_section.dart';
import 'package:amanda_longo_esteticista/section/home_section.dart';
import 'package:flutter/material.dart';

class WebWidget extends StatelessWidget {
  const WebWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Amanda Longo Esteticista",
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeSection(),
              AboutSection(),
            ],
          ),
        ),
      ),
    );
  }
}
