import 'package:amanda_longo_esteticista/section/about_section.dart';
import 'package:amanda_longo_esteticista/section/contact_section.dart';
import 'package:amanda_longo_esteticista/section/footer_section.dart';
import 'package:amanda_longo_esteticista/section/home_section.dart';
import 'package:amanda_longo_esteticista/section/services_section.dart';
import 'package:amanda_longo_esteticista/widget/header_widget.dart';
import 'package:flutter/material.dart';

class WebWidget extends StatelessWidget {
  const WebWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Amanda Longo Esteticista",
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(30),
          child: HeaderWidget(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeSection(),
              ServicesSection(),
              AboutSection(),
              ContactSection(),
              FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
