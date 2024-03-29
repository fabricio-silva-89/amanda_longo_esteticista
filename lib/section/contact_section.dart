import 'package:amanda_longo_esteticista/shared/web_colors.dart';
import 'package:amanda_longo_esteticista/shared/web_colors_opacity.dart';
import 'package:amanda_longo_esteticista/shared/web_images.dart';
import 'package:amanda_longo_esteticista/shared/web_text_styles.dart';
import 'package:amanda_longo_esteticista/widget/contact_item_widget.dart';
import 'package:amanda_longo_esteticista/widget/title_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  void _urlLaunch(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  void _emailLaunch() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'amandacrislongo@gmail.com',
      query:
          'subject=Quero agentar minha consulta&body=Por favor, informe um telefone para contato: ',
    );

    String url = params.toString();

    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: WebColorsOpacity.withe25,
        image: const DecorationImage(
          image: AssetImage(WebImages.wallpaper_contact),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: size.width,
        color: WebColorsOpacity.withe25,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
          child: Column(
            children: [
              TitleSectionWidget(
                text: 'Contato',
                style: WebTextStyles.titleService,
                color: WebColors.text,
              ),
              ContactItemWidget(
                text: '@amandacrislongo',
                image: WebImages.instagram_contact,
                onTap: () =>
                    _urlLaunch('https://www.instagram.com/amandacrislongo/'),
              ),
              SizedBox(height: 24),
              ContactItemWidget(
                text: 'amandacrislongo@gmail.com',
                image: WebImages.email,
                onTap: _emailLaunch,
              ),
              SizedBox(height: 24),
              ContactItemWidget(
                text: '(17) 99605-1233',
                image: WebImages.whatsapp,
                onTap: () => _urlLaunch(
                    'https://api.whatsapp.com/send/?phone=5517996051233&text&app_absent=0'),
              ),
              SizedBox(height: 24),
              ContactItemWidget(
                text: 'R. Paulo Guzo, 1584, Tabapuã - SP, 15880-000',
                image: WebImages.adress,
                onTap: () => _urlLaunch(
                    'https://www.google.com/maps/place/R.+Paulo+Guzo,+1584,+Tabapu%C3%A3+-+SP,+15880-000'),
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
