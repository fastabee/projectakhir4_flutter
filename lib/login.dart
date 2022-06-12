import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(url: 'http://worldbee.rf.gd/tms/?i=1', appBar: null);
  }
}
