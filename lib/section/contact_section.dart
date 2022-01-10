import 'package:amanda_longo_esteticista/shared/web_colors.dart';
import 'package:amanda_longo_esteticista/shared/web_colors_opacity.dart';
import 'package:amanda_longo_esteticista/shared/web_images.dart';
import 'package:amanda_longo_esteticista/shared/web_text_styles.dart';
import 'package:amanda_longo_esteticista/widget/contact_item_widget.dart';
import 'package:amanda_longo_esteticista/widget/title_section_widget.dart';
import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
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
          padding: const EdgeInsets.all(32.0),
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
              ),
              ContactItemWidget(
                text: 'amandacrislongo@gmail.com',
                image: WebImages.email,
              ),
              ContactItemWidget(
                text: '(17) 99605-1233',
                image: WebImages.whatsapp,
              ),
              ContactItemWidget(
                text:
                    'R. Orsini Dias Águiar, 197 - Jardim Alvorada, São José do Rio Preto - SP, 15020-070',
                image: WebImages.adress,
              ),
            ],
          ),
        ),
      ),
      // child: Stack(
      //   children: [
      //     Positioned(
      //       top: 0,
      //       left: 0,
      //       child: Container(
      //         width: size.width,
      //         color: WebColorsOpacity.withe25,
      //       ),
      //     ),
      //     Positioned(
      //       top: 0,
      //       left: size.width * 0.5 / 2,
      //       child: Column(
      //         children: [
      //           SizedBox(height: 36),
      //           Text(
      //             "Contato",
      //             style: WebTextStyles.titleService,
      //           ),
      //           SizedBox(height: 36),
      //           Container(
      //             width: 250,
      //             height: 1,
      //             color: WebColors.text,
      //           ),
      //           SizedBox(height: 36),
      //           Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             mainAxisAlignment: MainAxisAlignment.spaceAround,
      //             children: [
      //               Row(
      //                 children: [
      //                   Container(
      //                     width: 64,
      //                     height: 64,
      //                     decoration: BoxDecoration(
      //                       color: WebColors.secondary,
      //                       borderRadius: BorderRadius.circular(32),
      //                       image: DecorationImage(
      //                         image: AssetImage(WebImages.instagram_contact),
      //                       ),
      //                     ),
      //                   ),
      //                   SizedBox(width: 24),
      //                   Text(
      //                     '@amandacrislongo',
      //                     style: WebTextStyles.bodyContact,
      //                   ),
      //                 ],
      //               ),
      //               SizedBox(height: 24),
      //               Row(
      //                 children: [
      //                   Container(
      //                     width: 64,
      //                     height: 64,
      //                     decoration: BoxDecoration(
      //                       color: WebColors.secondary,
      //                       borderRadius: BorderRadius.circular(32),
      //                       image: DecorationImage(
      //                         image: AssetImage(WebImages.email),
      //                       ),
      //                     ),
      //                   ),
      //                   SizedBox(width: 24),
      //                   Text(
      //                     'amandacrislongo@gmail.com',
      //                     style: WebTextStyles.bodyContact,
      //                   ),
      //                 ],
      //               ),
      //               SizedBox(height: 24),
      //               Row(
      //                 children: [
      //                   Container(
      //                     width: 64,
      //                     height: 64,
      //                     decoration: BoxDecoration(
      //                       color: WebColors.secondary,
      //                       borderRadius: BorderRadius.circular(32),
      //                       image: DecorationImage(
      //                         image: AssetImage(WebImages.whatsapp),
      //                       ),
      //                     ),
      //                   ),
      //                   SizedBox(width: 24),
      //                   Text(
      //                     '(17) 99605-1233',
      //                     style: WebTextStyles.bodyContact,
      //                   ),
      //                 ],
      //               ),
      //               SizedBox(height: 24),
      //               Row(
      //                 children: [
      //                   Container(
      //                     width: 64,
      //                     height: 64,
      //                     decoration: BoxDecoration(
      //                       color: WebColors.secondary,
      //                       borderRadius: BorderRadius.circular(32),
      //                       image: DecorationImage(
      //                         image: AssetImage(WebImages.adress),
      //                       ),
      //                     ),
      //                   ),
      //                   SizedBox(width: 24),
      //                   SizedBox(
      //                     width: size.width * 0.5,
      //                     child: Text(
      //                       'R. Orsini Dias Águiar, 197 - Jardim Alvorada, São José do Rio Preto - SP, 15020-070',
      //                       style: WebTextStyles.bodyContact,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ],
      //           ),
      //           SizedBox(height: 36),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
