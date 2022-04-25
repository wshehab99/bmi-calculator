import 'package:flutter/material.dart';

import '../../constant.dart/app_constant.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  Result({Key? key, required this.numberedResult, required this.textResult})
      : super(key: key);
  double? numberedResult;
  String? textResult;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          numberedResult!.toStringAsFixed(2),
          style: TextStyle(fontSize: 90, color: accentColor),
        ),
        const SizedBox(
          height: 30,
        ),
        Visibility(
          visible: textResult!.isNotEmpty,
          child: Text(
            textResult!,
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.w400, color: accentColor),
          ),
        ),
      ],
    );
  }
}
