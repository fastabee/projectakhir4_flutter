import 'package:book_app/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class landingoff extends StatefulWidget {
  const landingoff({Key key}) : super(key: key);

  @override
  _landingoffState createState() => _landingoffState();
}

class _landingoffState extends State<landingoff> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        automaticallyImplyLeading: false,
        title: Text(
          'Page Title',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Color(0xFF97D57F),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Text(
                    'Almost There',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.05, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Image.asset(
                    'assets/images/albfo_3.png',
                    width: 300,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'Heak Your Spirit \nwith\nMy-Path',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                child: ElevatedButton(
                  child: const Text("Lets book"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const loginPage()),
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
