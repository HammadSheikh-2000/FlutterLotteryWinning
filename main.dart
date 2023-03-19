import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('Lottery Application',
              style:TextStyle(
                color:Colors.white,
                fontSize: 30,
              ),)),
            backgroundColor: Colors.teal.withOpacity(.8),
          ),
          body: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'Lottery Winning number is 4',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.3),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: x == 4
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.check,
                              color: Colors.green,
                              size: 35,
                            ),
                            Text(
                              'Congratulation you have won the lottery\n Your number is $x',
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.error,
                              color: Colors.red,
                              size: 35,
                            ),
                            Text(
                              'Better Luck Next Time Your Number is $x\n Try Again',
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                ),
              ),
            ],
          )),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              x = random.nextInt(30);
              setState(() {});
            },
            child: const Icon(Icons.refresh),
          ),
        ),
      ),
    );
  }
}
