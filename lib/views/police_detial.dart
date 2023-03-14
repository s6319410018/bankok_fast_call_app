import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/policelist.dart';

class policeDetialUi extends StatefulWidget {
  PoliceList? policeList;

  policeDetialUi({super.key, this.policeList});

  @override
  State<policeDetialUi> createState() => _policeDetialUiState();
}

class _policeDetialUiState extends State<policeDetialUi> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 149, 196, 216),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 54, 190, 244),
        title: Text(
          'สายด่วน (' + widget.policeList!.policeName + ')',
          style: GoogleFonts.kanit(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: MediaQuery.of(context).size.width * 0.05,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.08,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/' + widget.policeList!.policeImage,
                    ),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Color.fromARGB(255, 54, 190, 244),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.08,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.08),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: MediaQuery.of(context).size.width * 0.009),
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.05),
                  ),
                  leading: Icon(
                    FontAwesomeIcons.houseUser,
                    color: Color.fromARGB(255, 235, 244, 54),
                  ),
                  title: Text(
                    'ชื่อสถานีตำรวจ : ' + widget.policeList!.policeName,
                    style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                    ),
                  ),
                  tileColor: Color.fromARGB(255, 54, 190, 244),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.08),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: MediaQuery.of(context).size.width * 0.009),
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.05),
                  ),
                  onTap: () {
                    _makePhoneCall(widget.policeList!.policePhone);
                  },
                  leading: Icon(
                    FontAwesomeIcons.phone,
                    color: Color.fromARGB(255, 107, 228, 111),
                  ),
                  title: Text(
                    'เบอร์โทรศัพย์ : ' + widget.policeList!.policePhone,
                    style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                    ),
                  ),
                  tileColor: Color.fromARGB(255, 54, 190, 244),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.08),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: MediaQuery.of(context).size.width * 0.009),
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.05),
                  ),
                  onTap: () {
                    _launchInBrowser(
                      Uri.parse('https://www.facebook.com/' +
                          widget.policeList!.policeFacebook),
                    );
                  },
                  leading: Icon(
                    FontAwesomeIcons.facebook,
                    color: Color.fromARGB(255, 62, 39, 214),
                  ),
                  title: Text(
                    'Facebook : ' + widget.policeList!.policeFacebook,
                    style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                    ),
                  ),
                  tileColor: Color.fromARGB(255, 54, 190, 244),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.08),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: MediaQuery.of(context).size.width * 0.009),
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.05),
                  ),
                  onTap: () {
                    _launchInBrowser(
                      Uri.parse(widget.policeList!.policeWeb),
                    );
                  },
                  leading: Icon(
                    FontAwesomeIcons.globe,
                    color: Color.fromARGB(255, 24, 116, 255),
                  ),
                  title: Text(
                    'เว็บไชต์ : ' + widget.policeList!.policeWeb,
                    style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                    ),
                  ),
                  tileColor: Color.fromARGB(255, 54, 190, 244),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.08),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: MediaQuery.of(context).size.width * 0.009),
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.05),
                  ),
                  onTap: () {
                    _launchInBrowser(
                      Uri.parse(
                          'https://www.google.com/maps/search/?api=1&query=' +
                              widget.policeList!.policeLatitude +
                              ',' +
                              widget.policeList!.policeLongitude),
                    );
                  },
                  leading: Icon(
                    FontAwesomeIcons.mapLocationDot,
                    color: Color.fromARGB(255, 60, 72, 77),
                  ),
                  title: Text(
                    'สถานที่ตั้ง Go To Map',
                    style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                    ),
                  ),
                  tileColor: Color.fromARGB(255, 54, 190, 244),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.2),
            ],
          ),
        ),
      ),
    );
  }
}
