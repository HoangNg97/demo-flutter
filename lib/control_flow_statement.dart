import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlowStatementWidget extends StatefulWidget {
  const FlowStatementWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => FlowStatementState();
}

class FlowStatementState extends State<FlowStatementWidget> {
  String result = "";

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Control Flow Statement"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  children: [
                    TextButton(
                        onPressed: () => printForLoop(),
                        child: const Text("For loop print 1 to 10")),
                    TextButton(
                        onPressed: () => printWhileLoop(),
                        child: const Text(
                            "While loop print 1 to 10 but even number only")),
                    TextButton(
                        onPressed: () => printDoWhileLoop(),
                        child: const Text(
                            "Do while print 100 was divided by 2 until 0")),
                    TextButton(
                        onPressed: () => printForLoopWithBreak(),
                        child: const Text(
                            "For loop print 1 to 10 with break statement at number 5")),
                    TextButton(
                        onPressed: () => printForLoopWithContinue(),
                        child: const Text(
                            "For loop print 1 to 10 but skip number 5 and 7")),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(result),
                ),
              ),
            ],
          ),
        ),
      );

  void printForLoop() {
    String loopResult = "";
    for (int i = 1; i <= 10; i++) {
      loopResult += '$i  ';
    }
    setState(() {
      result = loopResult;
    });
  }

  void printWhileLoop() {
    String loopResult = "";
    var number = 1;
    while (number <= 10) {
      ++number;
      if (number % 2 == 0) loopResult += "$number  ";
    }
    setState(() {
      result = loopResult;
    });
  }

  void printDoWhileLoop() {
    String loopResult = "";
    var number = 100;
    do {
      loopResult += "$number ";
      number = number ~/ 2;
    } while (number > 0);
    setState(() {
      result = loopResult;
    });
  }

  void printForLoopWithBreak() {
    String loopResult = "";
    for (int i = 0; i <= 10; i++) {
      if (i == 5) break;
      loopResult += "$i  ";
    }
    setState(() {
      result = loopResult;
    });
  }

  void printForLoopWithContinue() {
    String loopResult = "";
    for (int i = 0; i <= 10; i++) {
      if (i == 5 || i == 7) continue;
      loopResult += "$i  ";
    }

    setState(() {
      result = loopResult;
    });
  }
}
