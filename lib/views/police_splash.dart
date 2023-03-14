import 'package:bankok_fast_call_app/views/police_home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class policesplashUi extends StatefulWidget {
  const policesplashUi({super.key});

  @override
  State<policesplashUi> createState() => _policesplashUiState();
}

class _policesplashUiState extends State<policesplashUi> {
  @override
  void initState() {
    //ทำหน้านี้ให้เป็น SplashScreen
    Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => policehomeUi(),
        ),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 54, 190, 244),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(300.0),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/station.png',
                  ),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              'สายด่วนชวนจับ',
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.width * 0.08,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              'เติมเมื่อไหร่ก็แวะมา\nPolice App',
              style: GoogleFonts.itim(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
