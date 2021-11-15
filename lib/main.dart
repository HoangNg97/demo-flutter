import 'package:demo_flutter/control_flow_statement.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: DemoFlutter()));
}

class DemoFlutter extends StatelessWidget {
  const DemoFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo Flutter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  openNewPage(context, const FlowStatementWidget());
                },
                child: const Text("Control Flow Statement")),
            TextButton(
                onPressed: () {},
                child: const Text("Exploring function (Coming soon)")),
            TextButton(
                onPressed: () {},
                child: const Text("Exception Handling(Coming soon)")),
            TextButton(
                onPressed: () {},
                child: const Text(
                    "Lamdas and higher-order functions(Coming soon)")),
            TextButton(
                onPressed: () {},
                child: const Text("Dart Collections(Coming soon)")),
          ],
        ),
      ),
    );
  }

  void openNewPage(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }
}
