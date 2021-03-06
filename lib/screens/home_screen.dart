import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    int counter = 10;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
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
      floatingActionButton: FloatingActionButton(
          elevation: 15,
          child: const Icon(
            Icons.monetization_on_outlined,
            color: Color.fromARGB(255, 226, 226, 17),
          ),
          onPressed: () {
            print('a');
            counter++;
          }),
    );
  }
}
