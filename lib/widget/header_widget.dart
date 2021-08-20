import 'package:amanda_longo_esteticista/shared/web_images.dart';
import 'package:flutter/material.dart';

import 'package:amanda_longo_esteticista/shared/web_gradients.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: WebGradients.linear,
      ),
      child: Container(
        width: 1200,
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Text(
                    "amandacrislongo@gmail.com",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 24),
                  Text(
                    "(17) 99659-8330",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(WebImages.instagram_icon),
                  ),
                  SizedBox(width: 24),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(WebImages.facebook_icon),
                  ),
                  SizedBox(width: 24),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(WebImages.linkedin_icon),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
