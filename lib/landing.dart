import 'package:book_app/landingoff.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class landing extends StatefulWidget {
  const landing({Key key}) : super(key: key);

  @override
  _landingState createState() => _landingState();
}

class _landingState extends State<landing> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(-0.1, 0),
          child: Text(
            'Feels free With Us',
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
      backgroundColor: Color(0xFF0B4088),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Text(
                  'There You Go',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.6),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 45, 0, 0),
                  child: Image.asset(
                    'assets/images/mcatd_1.png',
                    width: 500,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Text(
                  'Make Your Famly Time\n with\n MY-PATH',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xFFFCFCFC),
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                child: ElevatedButton(
                  child: const Text("Next"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const landingoff()),
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
