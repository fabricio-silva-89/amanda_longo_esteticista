import 'package:amanda_longo_esteticista/models/services_model.dart';
import 'package:amanda_longo_esteticista/shared/web_colors.dart';
import 'package:amanda_longo_esteticista/shared/web_text_styles.dart';
import 'package:amanda_longo_esteticista/widget/service_item_widget.dart';
import 'package:amanda_longo_esteticista/widget/subtitle_section_widget.dart';
import 'package:flutter/material.dart';

class ServiceGroup extends StatelessWidget {
  final String title;
  final String group;

  const ServiceGroup({
    Key? key,
    required this.title,
    required this.group,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: size.width > 1200
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        SubtitleSectionWidget(
          text: title,
          style: WebTextStyles.subtitleService,
          color: WebColors.secondary,
        ),
        Column(
          children: services
              .where((e) => e.type == group)
              .map((e) => ServiceItemWidget(
                    title: e.title,
                    description: e.description,
                    image: e.image,
                  ))
              .toList(),
        ),
      ],
    );
  }
}