import 'package:amanda_longo_esteticista/models/services_model.dart';
import 'package:amanda_longo_esteticista/shared/web_colors.dart';
import 'package:amanda_longo_esteticista/shared/web_text_styles.dart';
import 'package:amanda_longo_esteticista/widget/service_group_widget.dart';
import 'package:amanda_longo_esteticista/widget/service_item_widget.dart';
import 'package:amanda_longo_esteticista/widget/subtitle_section_widget.dart';
import 'package:amanda_longo_esteticista/widget/title_section_widget.dart';
import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          TitleSectionWidget(
            text: 'Serviços',
            style: WebTextStyles.titleService,
            color: WebColors.text,
          ),
          size.width > 1200
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ServiceGroup(
                      title: 'Corporal',
                      group: 'corporal',
                    ),
                    ServiceGroup(
                      title: 'Facial',
                      group: 'facial',
                    ),
                  ],
                )
              : Column(
                  children: [
                    ServiceGroup(
                      title: 'Corporal',
                      group: 'corporal',
                    ),
                    ServiceGroup(
                      title: 'Facial',
                      group: 'facial',
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
