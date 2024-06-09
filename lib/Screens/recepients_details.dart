import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xfer_web/Screens/depositors_fund_screen.dart';

class RecepientDetails extends StatelessWidget {
  const RecepientDetails({super.key});

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
                        SelectableText(
                          "Recipient's Details",
                          style: GoogleFonts.poppins(
                            fontSize:
                                MediaQuery.of(context).size.width * 0.0125,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // =============== UserName ====================
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SelectableText(
                                "User Name",
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
                                  hintText: "Type Full Name",
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

                        // =============== Account Number ====================
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SelectableText(
                                "Account Number",
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
                                  hintText: "Account Number",
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

                        // =============== Bank Name ====================
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SelectableText(
                                "Bank name",
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
                                  hintText: "Name of the Bank",
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

                        // =============== Amount to sent ====================
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SelectableText(
                                "Amount to sent",
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

                        // =============== Reference ====================
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SelectableText(
                                "Reference",
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
                                  hintText: "Reference",
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
                                builder: (context) => DepositorsFundScreen(),
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
                                "Continue Transaction",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                              ),
                            ),
                          ),
                        ),

                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Go Back",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
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
