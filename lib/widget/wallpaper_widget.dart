import 'package:amanda_longo_esteticista/shared/web_images.dart';
import 'package:flutter/material.dart';

class WallpaperWidget extends StatelessWidget {
  const WallpaperWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      child: Image.asset(WebImages.wallpaper),
    );
  }
}
