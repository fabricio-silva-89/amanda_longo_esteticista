import 'package:amanda_longo_esteticista/models/about_model.dart';
import 'package:amanda_longo_esteticista/shared/web_colors.dart';
import 'package:amanda_longo_esteticista/shared/web_colors_opacity.dart';
import 'package:amanda_longo_esteticista/shared/web_images.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 658,
      color: WebColorsOpacity.primary25,
      child: Container(
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: (size.width - 1200) / 2,
              child: Container(
                height: 500,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage(
                      WebImages.photo_about,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              right: (size.width - 1200) / 2,
              child: Container(
                width: 800,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AboutModel.titleAbout),
                    SizedBox(height: 20),
                    Text(AboutModel.subtitleAbout),
                    SizedBox(height: 15),
                    Text(AboutModel.descriptionAbout),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
