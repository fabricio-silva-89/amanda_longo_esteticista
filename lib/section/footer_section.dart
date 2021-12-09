import 'package:amanda_longo_esteticista/shared/web_gradients.dart';
import 'package:amanda_longo_esteticista/shared/web_images.dart';
import 'package:amanda_longo_esteticista/shared/web_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  void _urlLaunch(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
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
      decoration: BoxDecoration(
        gradient: WebGradients.linearLeft,
      ),
      child: Container(
        width: 1100,
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  InkWell(
                    onTap: () => _urlLaunch(
                        'https://www.instagram.com/amandacrislongo/'),
                    child: Image.asset(WebImages.instagram_icon),
                  ),
                  SizedBox(width: 24),
                  InkWell(
                    onTap: () =>
                        _urlLaunch('https://www.facebook.com/amandacrislongo/'),
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
              child: Container(
                child: Text("Desenvolvido por Fabrício Silva",
                    textAlign: TextAlign.right, style: WebTextStyles.header),
              ),
            )
          ],
        ),
      ),
    );
  }
}
