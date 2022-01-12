import 'dart:html';

import 'package:amanda_longo_esteticista/shared/web_images.dart';
import 'package:amanda_longo_esteticista/shared/web_text_styles.dart';
import 'package:flutter/material.dart';

import 'package:amanda_longo_esteticista/shared/web_gradients.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer.dart';
import 'package:seo_renderer/renderers/link_renderer/link_renderer.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  void _urlLaunch(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = 30.0;

    return Container(
      width: size.width,
      height: height,
      decoration: BoxDecoration(
        gradient: WebGradients.linear,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  TextRenderer(
                    element: HeadingElement.h6(),
                    text: Text(
                      "amandacrislongo@gmail.com",
                      style: WebTextStyles.header,
                    ),
                  ),
                  SizedBox(width: 24),
                  TextRenderer(
                    element: HeadingElement.h6(),
                    text: Text(
                      "(17) 99605-1233",
                      style: WebTextStyles.header,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  LinkRenderer(
                    anchorText: 'Instagram Amanda Longo Esteticista',
                    link: 'https://www.instagram.com/amandacrislongo/',
                    child: InkWell(
                      onTap: () => _urlLaunch(
                          'https://www.instagram.com/amandacrislongo/'),
                      child: Image.asset(WebImages.instagram_icon),
                    ),
                  ),
                  SizedBox(width: 24),
                  LinkRenderer(
                    anchorText: 'Facebook Amanda Longo Esteticista',
                    link: 'https://www.facebook.com/amandacrislongo/',
                    child: InkWell(
                      onTap: () => _urlLaunch(
                          'https://www.facebook.com/amandacrislongo/'),
                      child: Image.asset(WebImages.facebook_icon),
                    ),
                  ),
                  SizedBox(width: 24),
                  LinkRenderer(
                    anchorText: 'Linkedin Amanda Longo Esteticista',
                    link: 'https://www.linkedin.com/in/amanda-longo-980947159/',
                    child: InkWell(
                      onTap: () => _urlLaunch(
                          'https://www.linkedin.com/in/amanda-longo-980947159/'),
                      child: Image.asset(WebImages.linkedin_icon),
                    ),
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
