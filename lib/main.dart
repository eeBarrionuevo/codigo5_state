import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InitPage(),
    );
  }
}

//Stateless vs Stateful

class InitPage extends StatefulWidget {
  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  double sliderRedValue = 0;
  double sliderGreenValue = 0;
  double sliderBlueValue = 0;

  bool valueCheck = false;
  bool isUnderline = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "States",
        ),
      ),
      body: Column(
        children: [
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            textAlign: valueCheck ? TextAlign.justify : TextAlign.left,
            style: TextStyle(
              fontSize: 14.0,
              color: Color.fromRGBO(sliderRedValue.toInt(),
                  sliderGreenValue.toInt(), sliderBlueValue.toInt(), 1),
              decoration: isUnderline == true
                  ? TextDecoration.underline
                  : TextDecoration.none,
              height: 1.3,
            ),
          ),
          Slider(
            value: sliderRedValue,
            min: 0,
            max: 255,
            activeColor: Colors.red,
            inactiveColor: Colors.black12,
            thumbColor: Colors.red,
            onChanged: (double pepito) {
              sliderRedValue = pepito;
              setState(() {});
            },
          ),
          Slider(
            value: sliderGreenValue,
            min: 0,
            max: 255,
            activeColor: Colors.greenAccent,
            inactiveColor: Colors.black12,
            thumbColor: Colors.greenAccent,
            onChanged: (double pepito) {
              sliderGreenValue = pepito;
              print(pepito);
              setState(() {});
            },
          ),
          Slider(
            value: sliderBlueValue,
            min: 0,
            max: 255,
            activeColor: Colors.blueAccent,
            inactiveColor: Colors.black12,
            thumbColor: Colors.blueAccent,
            onChanged: (double pepito) {
              sliderBlueValue = pepito;
              print(pepito);
              setState(() {});
            },
          ),
          CheckboxListTile(
            value: valueCheck,
            title: Text("Justify"),
            subtitle: Text("Align"),
            onChanged: (bool? mandarina) {
              valueCheck = mandarina!;
              setState(() {});
            },
          ),
          CheckboxListTile(
            value: isUnderline,
            title: Text("Underline"),
            subtitle: Text("Decoration"),
            onChanged: (bool? mandarina) {
              isUnderline = mandarina!;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}

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

  List<String> images = [
    "https://images.pexels.com/photos/17551618/pexels-photo-17551618/free-photo-of-amor-verano-jardin-hoja.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/15663496/pexels-photo-15663496/free-photo-of-casas-casa-vehiculo-puerta.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/17481616/pexels-photo-17481616/free-photo-of-amor-romantico-hoja-regalo.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/17346212/pexels-photo-17346212/free-photo-of-pajaro-animal-bailando-zoo.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/16251652/pexels-photo-16251652/free-photo-of-luces-noche-edificios-faro.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/14918480/pexels-photo-14918480.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ];

  @override
  Widget build(BuildContext context) {
    print("BUILD!!!!!!");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   numbers[counter].toString(), //0 1 2 3 4 5
            //   style: const TextStyle(
            //     fontSize: 40.0,
            //   ),
            // ),
            Expanded(
              child: Image.network(
                images[counter],
                fit: BoxFit.cover,
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
