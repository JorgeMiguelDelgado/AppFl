import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;

  void increase() {
    counter++;
    setState(() {});
  }

  void reset() => setState(() => counter = 0);
  void decreate() => setState(() => counter--);

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
      floatingActionButton: CustomFloatingAction(
        increaseFn: increase,
        decreateFn: decreate,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingAction extends StatelessWidget {
  final Function increaseFn, decreateFn, resetFn;

  const CustomFloatingAction({
    Key? key,
    required this.increaseFn,
    required this.decreateFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          elevation: 15,
          child: const Icon(
            Icons.exposure_plus_1_outlined,
            color: Color.fromARGB(255, 226, 226, 17),
          ),
          onPressed: () => increaseFn(),
        ),
        FloatingActionButton(
          elevation: 15,
          child: const Icon(
            Icons.restart_alt_rounded,
            color: Color.fromARGB(255, 226, 226, 17),
          ),
          onPressed: () => resetFn(),
        ),
        FloatingActionButton(
          elevation: 15,
          child: const Icon(
            Icons.exposure_minus_1_outlined,
            color: Color.fromARGB(255, 226, 226, 17),
          ),
          onPressed: () => decreateFn(),
        ),
      ],
    );
  }
}
