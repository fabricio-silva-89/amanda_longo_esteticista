import 'package:amanda_longo_esteticista/models/about_model.dart';
import 'package:amanda_longo_esteticista/shared/web_colors.dart';
import 'package:amanda_longo_esteticista/shared/web_colors_opacity.dart';
import 'package:amanda_longo_esteticista/shared/web_images.dart';
import 'package:amanda_longo_esteticista/shared/web_text_styles.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = 628;

    return Container(
      alignment: Alignment.center,
      width: size.width,
      height: height,
      color: WebColorsOpacity.primary25,
      child: Stack(
        children: [
          Positioned(
            top: 30,
            left: (size.width - 1100) / 2,
            child: Container(
              width: 600,
              height: height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AboutModel.titleAbout, style: WebTextStyles.titleAbout),
                  SizedBox(height: 36),
                  Container(
                    width: 250,
                    height: 1,
                    color: WebColors.secondary,
                  ),
                  SizedBox(height: 36),
                  Text(AboutModel.descriptionAbout,
                      style: WebTextStyles.bodyAbout),
                ],
              ),
            ),
          ),
          Positioned(
            top: (height - 500) / 2,
            right: (size.width - 1100) / 2,
            child: Container(
              height: 500,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                image: DecorationImage(
                  image: AssetImage(
                    WebImages.photo_about,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
