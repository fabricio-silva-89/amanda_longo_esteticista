import 'package:amanda_longo_esteticista/shared/web_colors.dart';
import 'package:amanda_longo_esteticista/shared/web_images.dart';
import 'package:amanda_longo_esteticista/widget/menu_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 80,
      color: WebColors.background,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Image.asset(WebImages.logo),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MenuItemWidget(text: "HOME"),
                MenuItemWidget(text: "SOBRE"),
                MenuItemWidget(text: "SERVIÇOS"),
                MenuItemWidget(text: "CONTATO"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
