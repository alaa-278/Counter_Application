import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterClass extends StatefulWidget {
  @override
  State<CounterClass> createState() => _CounterClassState();
}

class _CounterClassState extends State<CounterClass> {
  int incCounter1 = 0;
  int incCounter2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFf0a74d),
        shadowColor:     const Color(0xFF420699),
        title: const Text(
          'Points Counter ',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color(0xFFFFFDD0)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(
                          color: Color(0xFF420699),
                          fontSize: 40,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      '$incCounter1',
                      style: const TextStyle(
                          color: Color(0xFF420699),
                          fontSize: 100,
                          fontWeight: FontWeight.w400),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFf0a74d),
                            shadowColor: const Color(0xFF420699),
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            incCounter1++;
                          });
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 20),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            incCounter1+=2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFf0a74d),
                            shadowColor: const Color(0xFF420699),
                            minimumSize: const Size(150, 50)),
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 20),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            incCounter1+=3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFf0a74d),
                            shadowColor: const Color(0xFF420699),
                            minimumSize: const Size(150, 50)),
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 20),
                        )),
                  ],
                ),
              ),
              Container(
                height: 500,
                child: const VerticalDivider(
                  color: Color(0xFF420699),
                  thickness: 1,
                ),
              ),
              Container(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(
                          color: Color(0xFF420699),
                          fontSize: 40,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      '$incCounter2',
                      style: const TextStyle(
                          color: Color(0xFF420699),
                          fontSize: 100,
                          fontWeight: FontWeight.w400),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            incCounter2++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFf0a74d),
                            shadowColor: const Color(0xFF420699),
                            minimumSize: const Size(150, 50)),
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 20),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            incCounter2+=2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFf0a74d),
                            shadowColor: const Color(0xFF420699),
                            minimumSize: const Size(150, 50)),
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 20),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            incCounter2+=3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            primary:     const Color(0xFFf0a74d),
                            shadowColor: const Color(0xFF420699),
                            minimumSize: const Size(150, 50)),
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 20),
                        )),
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  incCounter1=0;
                  incCounter2=0;
                });

              },
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFf0a74d),
                  shadowColor: const Color(0xFF420699),
                  minimumSize: const Size(150, 50)),
              child: const Text(
                'Reset',
                style: TextStyle(fontSize: 20),
              )),
        ],
      ),
    );
  }
}
