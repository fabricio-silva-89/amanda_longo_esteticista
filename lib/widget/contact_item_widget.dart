// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html';

import 'package:flutter/material.dart';

import 'package:amanda_longo_esteticista/shared/web_colors.dart';
import 'package:amanda_longo_esteticista/shared/web_text_styles.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer.dart';

class ContactItemWidget extends StatelessWidget {
  final String text;
  final String image;
  final Function() onTap;

  const ContactItemWidget({
    Key? key,
    required this.text,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: WebColors.secondary,
                  borderRadius: BorderRadius.circular(32),
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
              SizedBox(width: 24),
              SizedBox(
                width: size.width > 800 ? 648 : size.width - 152,
                child: TextRenderer(
                  element: HeadingElement.h3(),
                  text: Text(
                    text,
                    style: WebTextStyles.bodyContact,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 24),
      ],
    );
  }
}
