import 'package:amanda_longo_esteticista/shared/web_colors.dart';
import 'package:amanda_longo_esteticista/shared/web_text_styles.dart';
import 'package:flutter/material.dart';

class ServiceItemWidget extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const ServiceItemWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: WebTextStyles.itemService),
            SizedBox(height: 12),
            Container(
              width: (1100 / 2) - 168,
              child: Text(description, style: WebTextStyles.bodyService),
            ),
          ],
        ),
      ],
    );
  }
}
