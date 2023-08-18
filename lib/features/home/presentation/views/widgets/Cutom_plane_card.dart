import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/size_config.dart';
import 'custom_button.dart';

class CustomPlaneCard extends StatelessWidget {
  const CustomPlaneCard({
    super.key,
    required this.title,
    required this.price,
    required this.subtitle,
    required this.img,
    required this.onPressed,
  });
  final String title;
  final String price;
  final String subtitle;
  final String img;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: SizeConfig.screenwidth! * 0.9,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 12),
                    child: Text(
                      title,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 1),
                    child: Text(
                      price,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 10),
                    child: SizedBox(
                      width: SizeConfig.screenwidth! * 0.48,
                      child: Text(
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        subtitle,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, right: 15),
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: SvgPicture.asset(fit: BoxFit.fitWidth, img),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            onPressed: onPressed,
            title: 'View',
          )
        ],
      ),
    );
  }
}
