import 'package:flutter/material.dart';
import 'package:loader_overlay/src/overlay_controller_widget_extension.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class DialogUtils{
  static showDialogWithTitleAndOkButton(String content,BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Dialog(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                content,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      try {
                        Navigator.pop(context);
                        context.loaderOverlay.hide();
                      } catch (e) {
                        rethrow;
                      }
                    },
                    child: const Text("Ok"),
                    style: TextButton.styleFrom(
                      primary: Colors.black38,
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}