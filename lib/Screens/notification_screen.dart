import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class NotoficationScreen extends StatelessWidget {
  const NotoficationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            // =========================== ============================
            //                     Header
            // ========================================================
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.036,
              ),
              height: MediaQuery.of(context).size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/icons/xfer_logo.png",
                    width: MediaQuery.of(context).size.width * 0.0625,
                    height: MediaQuery.of(context).size.height * 0.103,
                  ),
                  CircleAvatar(),
                ],
              ),
            ),

            // =========================== ============================
            //                     Body
            // ========================================================

            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              color: Color(0xff264470),
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.56,
                  width: MediaQuery.of(context).size.width * 0.3,
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.025,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        SelectableText(
                          "Notifications",
                          style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width * 0.01,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        // =============== Details ====================

                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),

                        ListTile(
                          leading: CircleAvatar(),
                          title: Text(
                            "jeena sana  to send money an other account",
                            style: GoogleFonts.poppins(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.00625,
                            ),
                          ),
                          subtitle: Text(
                            "Time and Date",
                            style: GoogleFonts.poppins(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.00625,
                            ),
                          ),
                        ),

                        ListTile(
                          leading: CircleAvatar(),
                          title: Text(
                            "jeena sana  to send money an other account",
                            style: GoogleFonts.poppins(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.00625,
                            ),
                          ),
                          subtitle: Text(
                            "Time and Date",
                            style: GoogleFonts.poppins(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.00625,
                            ),
                          ),
                        ),

                        ListTile(
                          leading: CircleAvatar(),
                          title: Text(
                            "jeena sana  to send money an other account",
                            style: GoogleFonts.poppins(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.00625,
                            ),
                          ),
                          subtitle: Text(
                            "Time and Date",
                            style: GoogleFonts.poppins(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.00625,
                            ),
                          ),
                        ),

                        ListTile(
                          leading: CircleAvatar(),
                          title: Text(
                            "jeena sana  to send money an other account",
                            style: GoogleFonts.poppins(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.00625,
                            ),
                          ),
                          subtitle: Text(
                            "Time and Date",
                            style: GoogleFonts.poppins(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.00625,
                            ),
                          ),
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
