import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DiceHomePage());
}

class DiceHomePage extends StatefulWidget {
  const DiceHomePage({super.key});

  @override
  State<DiceHomePage> createState() => _DiceHomePageState();
}

class _DiceHomePageState extends State<DiceHomePage> {
  int dice = 1;

  void rollDice() {
    int x = Random().nextInt(6);

    setState(() {
      dice = x + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: InkWell(
                onTap: () {
                  rollDice();
                },
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.brown,
                  child: IndexedStack(
                    index: dice - 1,
                    children: const [
                      FirstDice(),
                      SecondDice(),
                      ThreeDice(),
                      FourDice(),
                      FiveDice(),
                      SixDice(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstDice extends StatelessWidget {
  const FirstDice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.red,
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 15,
        width: 15,
        margin: const EdgeInsets.all(10),
        color: Colors.white,
      ),
    );
  }
}

class SecondDice extends StatelessWidget {
  const SecondDice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.red,
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 15,
                  width: 15,
                  margin: const EdgeInsets.all(10),
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Container(
                  height: 15,
                  width: 15,
                  margin: const EdgeInsets.all(10),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ThreeDice extends StatelessWidget {
  const ThreeDice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.red,
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 15,
                  width: 15,
                  margin: const EdgeInsets.all(10),
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Container(
                  height: 15,
                  width: 15,
                  margin: const EdgeInsets.all(10),
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Container(
                  height: 15,
                  width: 15,
                  margin: const EdgeInsets.all(10),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FourDice extends StatelessWidget {
  const FourDice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.red,
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 15,
                    width: 15,
                    margin: const EdgeInsets.all(10),
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 15,
                    width: 15,
                    margin: const EdgeInsets.all(10),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 15,
                    width: 15,
                    margin: const EdgeInsets.all(10),
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 15,
                    width: 15,
                    margin: const EdgeInsets.all(10),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FiveDice extends StatelessWidget {
  const FiveDice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.red,
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 15,
                    width: 15,
                    margin: const EdgeInsets.all(10),
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 15,
                    width: 15,
                    margin: const EdgeInsets.all(10),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 15,
              width: 15,
              margin: const EdgeInsets.all(10),
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 15,
                    width: 15,
                    margin: const EdgeInsets.all(10),
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 15,
                    width: 15,
                    margin: const EdgeInsets.all(10),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SixDice extends StatelessWidget {
  const SixDice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.red,
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 15,
                    width: 15,
                    margin: const EdgeInsets.all(10),
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 15,
                    width: 15,
                    margin: const EdgeInsets.all(10),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 15,
                    width: 15,
                    margin: const EdgeInsets.all(10),
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 15,
                    width: 15,
                    margin: const EdgeInsets.all(10),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 15,
                    width: 15,
                    margin: const EdgeInsets.all(10),
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 15,
                    width: 15,
                    margin: const EdgeInsets.all(10),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
