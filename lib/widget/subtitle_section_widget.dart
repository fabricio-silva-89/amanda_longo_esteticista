import 'package:flutter/material.dart';

class SubtitleSectionWidget extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Color color;

  const SubtitleSectionWidget({
    Key? key,
    required this.text,
    required this.style,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: size.width > 1200
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        Text(
          text,
          style: style,
        ),
        SizedBox(height: 12),
        Container(
          width: 80,
          height: 1,
          color: color,
        ),
        SizedBox(height: 24),
      ],
    );
  }
}
