import 'package:flutter/material.dart';

class TitleSectionWidget extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Color color;
  final bool isCenter;

  const TitleSectionWidget({
    Key? key,
    required this.text,
    required this.style,
    required this.color,
    this.isCenter = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isCenter ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: style,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 32),
        Container(
          width: 250,
          height: 1,
          color: color,
        ),
        SizedBox(height: 32),
      ],
    );
  }
}
