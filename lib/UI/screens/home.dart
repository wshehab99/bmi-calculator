import 'package:bmi_calculator/UI/widgets/left_bar.dart';
import 'package:bmi_calculator/UI/widgets/result.dart';
import 'package:bmi_calculator/UI/widgets/right_bar.dart';
import 'package:bmi_calculator/UI/widgets/text_feild.dart';
import 'package:bmi_calculator/constant.dart/app_constant.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? textResult = '';
  double bmiResult = 0;
  WtextField height = WtextField(hintText: "Height");
  WtextField mass = WtextField(hintText: "Mass");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(color: accentColor, fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainColor,
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              height,
              mass,
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              double w = double.parse(mass.textEditingController!.text);
              double h = double.parse(height.textEditingController!.text);
              setState(() {
                bmiResult = w / (h * h);
                if (bmiResult > 25) {
                  textResult = "You are over the weight";
                } else if (bmiResult >= 18.5 && bmiResult <= 25) {
                  textResult = 'You have a normal weight';
                } else {
                  textResult = 'You are under the weight';
                }
              });
            },
            child: Text(
              'Calculate',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: accentColor),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Result(numberedResult: bmiResult, textResult: textResult),
          const SizedBox(
            height: 40,
          ),
          const LeftBar(barWidth: 25),
          const SizedBox(
            height: 20,
          ),
          const LeftBar(barWidth: 70),
          const SizedBox(
            height: 20,
          ),
          const LeftBar(barWidth: 25),
          const SizedBox(
            height: 20,
          ),
          const RightBar(barWidth: 40),
          const SizedBox(
            height: 50,
          ),
          const RightBar(barWidth: 40),
        ],
      )),
    );
  }
}
