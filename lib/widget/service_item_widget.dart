import 'package:flutter/material.dart';

class ServiceItemWidget extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const ServiceItemWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
          Text(title),
          Text(description),
        ],
      ),
    );
  }
}
