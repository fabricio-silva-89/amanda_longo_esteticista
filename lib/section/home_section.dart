import 'package:amanda_longo_esteticista/shared/web_images.dart';
import 'package:amanda_longo_esteticista/shared/web_text_styles.dart';
import 'package:amanda_longo_esteticista/widget/header_widget.dart';
import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 658,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            WebImages.wallpaper,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: HeaderWidget(),
            ),
            Positioned(
              top: 30,
              left: (size.width - 1200) / 2,
              child: Container(
                width: 1200,
                child: Column(
                  children: [
                    Image.asset(
                      WebImages.logo,
                      width: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 24),
                    Text(
                      "Renove a sua autoestima",
                      style: WebTextStyles.titleHome,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
