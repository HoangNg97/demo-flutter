import 'package:demo_flutter/dialog_utils.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key? key}) : super(key: key);
  String? title;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Widget'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            //This will cause error, it will be shown in console last LateInitializeError
            Center(
              child: TextButton(
                onPressed: () {
                  DialogUtils.showDialogWithTitleAndOkButton(
                      'Click ok to see error in console', context);
                },
                child: Container(
                  child: const Text(
                    'Don\'t move. Click this text right now to see error',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.black38,
                  padding: const EdgeInsets.all(20),
                ),
              ),
            ),
            LoaderOverlay(
              child: Center(
                child: TextButton(
                  onPressed: () {
                    context.loaderOverlay.show();
                    Future.delayed(const Duration(seconds: 2), () {
                      context.loaderOverlay.hide();
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      'Show loader overlay',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.black38,
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
