import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GoodwithbaseWidget extends StatefulWidget {
  const GoodwithbaseWidget({Key key}) : super(key: key);

  @override
  _GoodwithbaseWidgetState createState() => _GoodwithbaseWidgetState();
}

class _GoodwithbaseWidgetState extends State<GoodwithbaseWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Image.asset(
            'assets/images/test3.png',
            height: 39,
            fit: BoxFit.cover,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Colors.white,
      body: WebView(
        initialUrl: 'http://worldbee.rf.gd/tms/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
