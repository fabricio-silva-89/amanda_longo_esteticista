import 'package:amanda_longo_esteticista/models/services_model.dart';
import 'package:amanda_longo_esteticista/shared/web_colors.dart';
import 'package:amanda_longo_esteticista/shared/web_text_styles.dart';
import 'package:amanda_longo_esteticista/widget/service_item_widget.dart';
import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1100),
      child: Column(
        children: [
          SizedBox(height: 36),
          Text(
            "Serviços",
            style: WebTextStyles.titleService,
          ),
          SizedBox(height: 36),
          Container(
            width: 250,
            height: 1,
            color: WebColors.text,
          ),
          SizedBox(height: 36),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Corporal",
                    style: WebTextStyles.subtitleService,
                  ),
                  SizedBox(height: 12),
                  Container(
                    width: 80,
                    height: 1,
                    color: WebColors.secondary,
                  ),
                  SizedBox(height: 24),
                  Column(
                      children: services
                          .where((e) => e.type == "corporal")
                          .map((e) => Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: ServiceItemWidget(
                                  title: e.title,
                                  description: e.description,
                                  image: e.image,
                                ),
                              ))
                          .toList()),
                ],
              ),
              SizedBox(width: 80),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Facial",
                    style: WebTextStyles.subtitleService,
                  ),
                  SizedBox(height: 12),
                  Container(
                    width: 80,
                    height: 1,
                    color: WebColors.secondary,
                  ),
                  SizedBox(height: 24),
                  Column(
                      children: services
                          .where((e) => e.type == "facial")
                          .map((e) => Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: ServiceItemWidget(
                                  title: e.title,
                                  description: e.description,
                                  image: e.image,
                                ),
                              ))
                          .toList()),
                ],
              ),
            ],
          ),
          SizedBox(height: 36),
        ],
      ),
    );
  }
}
