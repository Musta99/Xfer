import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xfer_web/Screens/address_Screen.dart';

class DepositorsFundScreen extends StatelessWidget {
  const DepositorsFundScreen({super.key});

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
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width * 0.3,
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 22,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              CupertinoIcons.arrow_left_circle_fill,
                            ),
                            SelectableText(
                              "Deposit's Fund",
                              style: GoogleFonts.poppins(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.0125,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              CupertinoIcons.arrow_left_circle_fill,
                              color: Colors.transparent,
                            ),
                          ],
                        ),
                        // =============== To deposit fund. Select one of the methods below. ====================
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SelectableText(
                                "User NameTo deposit fund. Select one of the methods below.",
                                style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.00729,
                                ),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  hintText: "Credit/Debit Card",
                                  hintStyle: GoogleFonts.poppins(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.00833,
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // =============== Enter Deposit amount. ====================
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SelectableText(
                                "Enter Deposit amount.",
                                style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.00729,
                                ),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  hintText: "\$678.00",
                                  hintStyle: GoogleFonts.poppins(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.00833,
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // =============== Verify payment details. ====================
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SelectableText(
                                "Verify payment details.",
                                style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.00729,
                                ),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  hintText: "To Confirm Payment",
                                  hintStyle: GoogleFonts.poppins(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.00833,
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // =============== Authenticate Deposit. ====================
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SelectableText(
                                "Authenticate Deposit.",
                                style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.00729,
                                ),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  hintStyle: GoogleFonts.poppins(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.00833,
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // =============== Purpose or reference. ====================
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SelectableText(
                                "Purpose or reference.",
                                style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.00729,
                                ),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  hintText:
                                      "Put the purpose of the deposit money",
                                  hintStyle: GoogleFonts.poppins(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.00833,
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // ==================== Button =========================

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddressScreen(),
                              ),
                            );
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            width: MediaQuery.of(context).size.width * 0.27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff00255B),
                            ),
                            child: Center(
                              child: Text(
                                "Confirmation",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                              ),
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
