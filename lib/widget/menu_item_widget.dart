import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  final String text;

  const MenuItemWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
