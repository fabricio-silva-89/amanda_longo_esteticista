import 'package:amanda_longo_esteticista/shared/web_images.dart';
import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      width: size.width,
      height: size.width > 800 ? size.height - 30 : size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            WebImages.wallpaper,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
          child: Image.asset(
            WebImages.logo,
            width: size.width > 800 ? 736 : size.width,
          ),
        ),
      ),
    );
  }
}
