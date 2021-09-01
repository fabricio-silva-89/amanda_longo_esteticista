import 'package:amanda_longo_esteticista/shared/web_gradients.dart';
import 'package:amanda_longo_esteticista/shared/web_images.dart';
import 'package:amanda_longo_esteticista/shared/web_text_styles.dart';
import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: WebGradients.linearLeft,
      ),
      child: Container(
        width: 1100,
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(WebImages.instagram_icon),
                  ),
                  SizedBox(width: 24),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(WebImages.facebook_icon),
                  ),
                  SizedBox(width: 24),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(WebImages.linkedin_icon),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Text("Desenvolvido por Fabrício Silva",
                    style: WebTextStyles.header),
              ),
            )
          ],
        ),
      ),
    );
  }
}
