import 'dart:html';

import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer.dart';

class ContentAboutWiget extends StatelessWidget {
  final String text;
  final TextStyle style;

  const ContentAboutWiget({
    Key? key,
    required this.text,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width > 1200 ? (size.width - 96) / 2 : size.width - 64,
      child: TextRenderer(
        element: ParagraphElement(),
        text: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
