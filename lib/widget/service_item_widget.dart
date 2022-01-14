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
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width > 430 ? 430 : size.width,
      child: Row(
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
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: WebTextStyles.itemService,
                ),
                SizedBox(height: 8),
                // SizedBox(
                //   width: size.width > 1200 ? (1100 - 240) / 2 : (size.width - 240),
                //   child: Text(description, style: WebTextStyles.bodyService),
                // ),
                Text(
                  description,
                  style: WebTextStyles.bodyService,
                ),
                SizedBox(height: 32),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
