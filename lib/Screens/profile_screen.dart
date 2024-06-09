import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xfer_web/Screens/help_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                      horizontal: MediaQuery.of(context).size.width * 0.04,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        SelectableText(
                          "Johan Smith",
                          style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width * 0.01,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SelectableText(
                          "Member ship as 04/05/24",
                          style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width * 0.01,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        // =============== Details ====================

                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),

                        Row(
                          children: [
                            Icon(CupertinoIcons.person),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.0167,
                            ),
                            SelectableText(
                              "Your details",
                              style: GoogleFonts.poppins(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.00625,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),

                        // ================================================= //
                        Row(
                          children: [
                            Icon(CupertinoIcons.book),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.0167,
                            ),
                            SelectableText(
                              "Statements and Reports",
                              style: GoogleFonts.poppins(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.00625,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),

                        // ================================================= //
                        Row(
                          children: [
                            Icon(CupertinoIcons.gear),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.0167,
                            ),
                            SelectableText(
                              "Settings",
                              style: GoogleFonts.poppins(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.00625,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),

                        // ================================================= //
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HelpScreen(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.question),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.0167,
                              ),
                              SelectableText(
                                "Help",
                                style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.00625,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // ================================================= //
                        Row(
                          children: [
                            Icon(CupertinoIcons.arrow_left_circle_fill),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.0167,
                            ),
                            SelectableText(
                              "Log out",
                              style: GoogleFonts.poppins(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.00625,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
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
