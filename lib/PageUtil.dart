import 'package:flutter/material.dart';

class PageUtil {
  static Future<void> go(BuildContext context, String pageName) async {
    await Navigator.of(context).pushNamed("/" + pageName);
  }

  static Future<void> goForWeb(BuildContext context, String pageName) async {
    await Navigator.of(context).popAndPushNamed("/" + pageName);
  }

  static void back(BuildContext context) {
    Navigator.of(context).pop();
  }
}
