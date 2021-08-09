import 'package:amanda_longo_esteticista/shared/web_colors.dart';
import 'package:amanda_longo_esteticista/shared/web_gradients.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: 30,
      decoration: BoxDecoration(
        gradient: WebGradients.linear,
      ),
    );
  }
}
