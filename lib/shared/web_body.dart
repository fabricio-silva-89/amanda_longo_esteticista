import 'package:amanda_longo_esteticista/section/about_section.dart';
import 'package:amanda_longo_esteticista/section/contact_section.dart';
import 'package:amanda_longo_esteticista/section/footer_section.dart';
import 'package:amanda_longo_esteticista/section/home_section.dart';
import 'package:amanda_longo_esteticista/section/services_section.dart';
import 'package:amanda_longo_esteticista/widget/header_widget.dart';
import 'package:flutter/material.dart';

class WebBody extends StatelessWidget {
  const WebBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: size.width > 800
          ? PreferredSize(
              preferredSize: Size.fromHeight(48),
              child: HeaderWidget(),
            )
          : null,
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
    );
  }
}
