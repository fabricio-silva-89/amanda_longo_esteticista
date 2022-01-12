import 'package:amanda_longo_esteticista/shared/web_gradients.dart';
import 'package:amanda_longo_esteticista/shared/web_images.dart';
import 'package:amanda_longo_esteticista/shared/web_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/link_renderer/link_renderer.dart';
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Row(
          children: [
            if (size.width > 800)
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                      link:
                          'https://www.linkedin.com/in/amanda-longo-980947159/',
                      child: InkWell(
                        onTap: () => _urlLaunch(
                            'https://www.linkedin.com/in/amanda-longo-980947159/'),
                        child: Image.asset(WebImages.linkedin_icon),
                      ),
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
                  LinkRenderer(
                    anchorText: 'Linkedin Fabrício Silva',
                    link: 'https://www.linkedin.com/in/fabrício-s/',
                    child: InkWell(
                      onTap: () =>
                          _urlLaunch('https://www.linkedin.com/in/fabrício-s/'),
                      child: Text(
                        "Desenvolvido por Fabrício Silva",
                        style: WebTextStyles.header,
                      ),
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
