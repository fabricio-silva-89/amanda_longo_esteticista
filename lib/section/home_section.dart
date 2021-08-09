import 'package:amanda_longo_esteticista/widget/header_widget.dart';
import 'package:amanda_longo_esteticista/widget/menu_widget.dart';
import 'package:amanda_longo_esteticista/widget/wallpaper_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            HeaderWidget(),
            MenuWidget(),
            WallpaperWidget(),
          ],
        ),
      ),
    );
  }
}
