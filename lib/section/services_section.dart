import 'package:amanda_longo_esteticista/shared/web_colors.dart';
import 'package:amanda_longo_esteticista/shared/web_text_styles.dart';
import 'package:amanda_longo_esteticista/widget/service_group_widget.dart';
import 'package:amanda_longo_esteticista/widget/title_section_widget.dart';
import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
      child: Column(
        children: [
          TitleSectionWidget(
            // text: 'Serviços',
            text: 'Serviços Corporais',
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
                      start: 0,
                      end: 5,
                    ),
                    ServiceGroup(
                      title: 'Corporal',
                      group: 'corporal',
                      start: 5,
                      end: 10,
                    ),
                    // ServiceGroup(
                    //   title: 'Facial',
                    //   group: 'facial',
                    // ),
                  ],
                )
              : Column(
                  children: [
                    ServiceGroup(
                      title: 'Corporal',
                      group: 'corporal',
                      start: 0,
                      end: 10,
                    ),
                    // ServiceGroup(
                    //   title: 'Facial',
                    //   group: 'facial',
                    // ),
                  ],
                ),
        ],
      ),
    );
  }
}
