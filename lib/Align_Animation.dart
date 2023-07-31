import 'package:flutter/material.dart';

class AlignAnimationScreen extends StatefulWidget {
  const AlignAnimationScreen({Key? key}) : super(key: key);

  @override
  State<AlignAnimationScreen> createState() => _AlignAnimationScreenState();
}

class _AlignAnimationScreenState extends State<AlignAnimationScreen> {
  int _jerryAligned = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Align Animation')),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Stack(
          children: [
            AnimatedAlign(
              alignment: getNextAlignment(_jerryAligned),
              duration: const Duration(milliseconds: 400),
              child: Container(
                color: Colors.transparent,
                width: 100,
                height: 100,
                child: Image.asset('assets/jerry.png'),
              ),
            ),
            AnimatedAlign(
              alignment: getNextAlignment(_jerryAligned + 1),
              duration: const Duration(milliseconds: 400),
              child: Container(
                color: Colors.transparent,
                width: 100,
                height: 100,
                child: Image.asset('assets/tom.png'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.animation),
        onPressed: () {
          setState(() {
            _jerryAligned = _jerryAligned + 1;
          });
        },
      ),
    );
  }

  Alignment getNextAlignment(int alignNumber) {
    switch (alignNumber) {
      case 1:
        return Alignment.topCenter;
      case 2:
        return Alignment.topRight;
      case 3:
        return Alignment.centerLeft;
      case 4:
        return Alignment.center;
      case 5:
        return Alignment.centerRight;
      case 6:
        return Alignment.bottomLeft;
      case 7:
        return Alignment.bottomCenter;
      case 8:
        return Alignment.bottomRight;
      default:
        _jerryAligned = 0;
        return Alignment.topLeft;
    }
  }
}
