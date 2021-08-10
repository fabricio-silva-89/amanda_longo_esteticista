import 'package:amanda_longo_esteticista/models/about_model.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Text(AboutModel.titleAbout, textAlign: TextAlign.center),
            SizedBox(height: 20),
            Text(AboutModel.subtitleAbout, textAlign: TextAlign.center),
            SizedBox(height: 15),
            Text(AboutModel.descriptionAbout, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
