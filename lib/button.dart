import 'package:flutter/material.dart';

class Calculation extends StatefulWidget {
  const Calculation({Key? key}) : super(key: key);

  @override
  State<Calculation> createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  Widget Buttons(String btntxt, Color btncolor) {
    return SizedBox(
      height: 100,
      width: 100,
      child: ElevatedButton(
        onPressed: () {
          Calculate(btntxt);
        },
        style: ElevatedButton.styleFrom(
          primary: btncolor,
          textStyle: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          shape: const StadiumBorder(),
        ),
        child: Text(btntxt),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

void Calculate(btntxt) {
  if (btntxt == 1) {
    print('1');
  }
}
