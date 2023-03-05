import 'package:amanda_longo_esteticista/models/about_model.dart';
import 'package:amanda_longo_esteticista/shared/web_colors.dart';
import 'package:amanda_longo_esteticista/shared/web_images.dart';
import 'package:amanda_longo_esteticista/shared/web_text_styles.dart';
import 'package:amanda_longo_esteticista/widget/content_about_widget.dart';
import 'package:amanda_longo_esteticista/widget/title_section_widget.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      color: WebColors.primary,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
        child: size.width > 1200
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleSectionWidget(
                        text: 'Amanda Longo',
                        style: WebTextStyles.titleAbout,
                        color: WebColors.white,
                        isCenter: false,
                      ),
                      ContentAboutWiget(
                        text: AboutModel.descriptionAbout,
                        style: WebTextStyles.bodyAbout,
                      )
                    ],
                  ),
                  Container(
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
                ],
              )
            : Column(
                children: [
                  Container(
                    height: 300,
                    width: 300,
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
                  SizedBox(height: 32),
                  Column(
                    children: [
                      TitleSectionWidget(
                        text: 'Amanda Longo',
                        style: WebTextStyles.titleAbout,
                        color: WebColors.secondary,
                      ),
                      ContentAboutWiget(
                        text: AboutModel.descriptionAbout,
                        style: WebTextStyles.bodyAbout,
                      )
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}
