import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget Buttons(String btntxt, Color btncolor) {
    return SizedBox(
      height: 100,
      width: 100,
      child: ElevatedButton(
        onPressed: () {
          setState(() {});
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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Simple Calculator UI'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                child: const Text(
                  'data',
                  style: TextStyle(color: Colors.amber),
                ),
              ),
            ),
            Row(
              children: [
                Buttons("C", Colors.blue),
                Buttons('%', Colors.amber),
                Buttons("M", Colors.amber),
                Buttons("x", Colors.amber),
              ],
            ),
            Row(
              children: [
                Buttons("7", Colors.blueGrey),
                Buttons('8', Colors.blueGrey),
                Buttons("9", Colors.blueGrey),
                Buttons("-", Colors.amber),
              ],
            ),
            Row(
              children: [
                Buttons("4", Colors.blueGrey),
                Buttons('5', Colors.blueGrey),
                Buttons("6", Colors.blueGrey),
                Buttons("+", Colors.amber),
              ],
            ),
            Row(
              children: [
                Buttons("1", Colors.blueGrey),
                Buttons('2', Colors.blueGrey),
                Buttons("3", Colors.blueGrey),
                Buttons("/", Colors.amber),
              ],
            ),
            Row(
              children: [
                Buttons(".", Colors.blueGrey),
                Buttons('0', Colors.blueGrey),
                Buttons("00", Colors.blueGrey),
                Buttons("=", Colors.amber),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
