import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CounterScreen',
        ),
        elevation: 10,
      ),
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador de taps',
              style: fontSize30,
            ),
            Text(
              '$counter',
              style: fontSize30,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              elevation: 15,
              child: const Icon(
                Icons.exposure_plus_1_outlined,
                color: Color.fromARGB(255, 226, 226, 17),
              ),
              onPressed: () {
                counter++;
                setState(() {});
              }),
          FloatingActionButton(
              elevation: 15,
              child: const Icon(
                Icons.restart_alt_rounded,
                color: Color.fromARGB(255, 226, 226, 17),
              ),
              onPressed: () {
                counter = 0;
                setState(() {});
              }),
          FloatingActionButton(
              elevation: 15,
              child: const Icon(
                Icons.exposure_minus_1_outlined,
                color: Color.fromARGB(255, 226, 226, 17),
              ),
              onPressed: () {
                counter--;
                setState(() {});
              }),
        ],
      ),
    );
  }
}
