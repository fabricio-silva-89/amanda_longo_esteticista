import 'package:amanda_longo_esteticista/models/services_model.dart';
import 'package:amanda_longo_esteticista/shared/web_colors.dart';
import 'package:amanda_longo_esteticista/widget/service_item_widget.dart';
import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Column(
        children: [
          Text("Serviços"),
          Container(
            width: 250,
            height: 1,
            color: WebColors.secondary,
          ),
          Text("Corporal"),
          // ServiceItemWidget(
          //   title: services.elementAt(0).title,
          //   description: services.elementAt(0).description,
          //   image: services.elementAt(0).image,
          // ),
          Row(
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
          // Text("Facial"),
          // GridView.count(
          //     crossAxisCount: 5,
          //     children: services
          //         .where((e) => e.type == "facial")
          //         .map((e) => ServiceItemWidget(
          //               title: e.title,
          //               description: e.description,
          //               image: e.image,
          //             ))
          //         .toList()),
        ],
      ),
    );
  }
}
