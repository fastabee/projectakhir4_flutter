import 'package:book_app/landing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class landingon extends StatefulWidget {
  const landingon({Key key}) : super(key: key);

  @override
  _landingonState createState() => _landingonState();
}

class _landingonState extends State<landingon> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(-0.1, 0),
          child: Text(
            'MY-PATH',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Color(0xB8A1B16E),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(-0.1, -0.05),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Text(
                    'Welcome To My-Path',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Image.asset(
                  'assets/images/9hsjc_2.png',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                child: Text(
                  'Manage Your Tour With \nMy-Path',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 90, 0, 0),
                child: ElevatedButton(
                  child: const Text("Lets Start"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const landing()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
