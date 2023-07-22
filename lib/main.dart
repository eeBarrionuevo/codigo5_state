import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

//Stateless vs Stateful

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  List<int> numbers = [
    23, //0
    11, //1
    24, //2
    100, //3
    56, //4
    230, //5
  ];

  @override
  Widget build(BuildContext context) {
    print("BUILD!!!!!!");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              numbers[counter].toString(), //0 1 2 3 4 5
              style: const TextStyle(
                fontSize: 40.0,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (counter < numbers.length - 1) {
                  counter = counter + 1;
                  setState(() {});
                }
              },
              child: const Text("Siguiente"),
            ),
            ElevatedButton(
              onPressed: () {
                if (counter > 0) {
                  counter = counter - 1;
                  setState(() {});
                }
              },
              child: const Text("Anterior"),
            ),
          ],
        ),
      ),
    );
  }
}
