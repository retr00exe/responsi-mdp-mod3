import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/stair.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 25, right: 25),
              child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                              height: 35,
                              width: 35,
                              child: Image.asset('assets/images/list.png'),
                            ),
                          ]),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 120),
                      child: Text(
                        'Mirror wall',
                        style: GoogleFonts.roboto(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 120),
                      child: Text(
                        'Stair case',
                        style: GoogleFonts.roboto(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 120),
                      child: Text(
                        'Living Room Theme',
                        style: GoogleFonts.roboto(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 120),
                      child: Text(
                        'Customization according to your need',
                        style: GoogleFonts.roboto(
                            fontSize: 20, color: Colors.white),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16)))
                  ]),
            )));
  }
}
