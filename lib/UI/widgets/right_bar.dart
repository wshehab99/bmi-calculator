import 'package:bmi_calculator/constant.dart/app_constant.dart';
import 'package:flutter/material.dart';

class RightBar extends StatelessWidget {
  const RightBar({Key? key, @required this.barWidth}) : super(key: key);
  final double? barWidth;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: barWidth,
          height: 25.0,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: accentColor),
        )
      ],
    );
  }
}
