import 'package:amanda_longo_esteticista/shared/web_body.dart';
import 'package:flutter/material.dart';

class WebWidget extends StatelessWidget {
  const WebWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Amanda Longo Esteticista",
      home: Scaffold(
        body: WebBody(),
      ),
    );
  }
}
