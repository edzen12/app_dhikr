import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// Stateless - неизменяемые
// Stateful- неизменяемые

class CounterSection extends StatefulWidget {
  const CounterSection({super.key});

  @override
  State<CounterSection> createState() => _CounterSectionState();
}

class _CounterSectionState extends State<CounterSection> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    if (counter > 0) {
      setState(() {
        counter--;
      });
    }
  }

  void zeroing() {
    if (counter != 0) {
      setState(() {
        counter = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(bottom: 15),
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => decrement(),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlueAccent,
                    ),
                    width: 35,
                    height: 35,
                    alignment: Alignment.center,
                    child: SvgPicture.asset('assets/icons/minus.svg'),
                  ),
                ),
                GestureDetector(
                  onTap: () => increment(),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 155,
                    height: 155,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$counter',
                          style: TextStyle(
                            fontSize: 55,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Dhikr',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => zeroing(),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlueAccent,
                    ),
                    width: 35,
                    height: 35,
                    alignment: Alignment.center,
                    child: SvgPicture.asset('assets/icons/reload.svg'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            height: 45,
            alignment: Alignment.center,
            child: Text('Сохранить зикр', style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
    );
  }
}
