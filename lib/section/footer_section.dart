import 'package:amanda_longo_esteticista/shared/web_colors.dart';
import 'package:amanda_longo_esteticista/shared/web_images.dart';
import 'package:amanda_longo_esteticista/shared/web_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  void _urlLaunch(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 60,
      alignment: Alignment.center,
      color: WebColors.primary,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            if (size.width > 800)
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => _urlLaunch(
                          'https://www.instagram.com/amandacrislongo/'),
                      child: Image.asset(WebImages.instagram_icon),
                    ),
                    SizedBox(width: 24),
                    InkWell(
                      onTap: () => _urlLaunch(
                          'https://www.facebook.com/amandacrislongo/'),
                      child: Image.asset(WebImages.facebook_icon),
                    ),
                    SizedBox(width: 24),
                    InkWell(
                      onTap: () => _urlLaunch(
                          'https://www.linkedin.com/in/amanda-longo-980947159/'),
                      child: Image.asset(WebImages.linkedin_icon),
                    ),
                  ],
                ),
              ),
            Expanded(
              child: Row(
                mainAxisAlignment: size.width > 800
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () =>
                        _urlLaunch('https://www.linkedin.com/in/fabrício-s/'),
                    child: Text(
                      "Desenvolvido por Fabrício Silva",
                      style: WebTextStyles.header,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
