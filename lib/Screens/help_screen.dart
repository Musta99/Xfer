import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

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
                  width: MediaQuery.of(context).size.width * 0.323,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child:
                                  Icon(CupertinoIcons.arrow_left_circle_fill),
                            ),
                            SelectableText(
                              "Hi, how can we help?",
                              style: GoogleFonts.poppins(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.01,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              CupertinoIcons.arrow_left_circle_fill,
                              color: Colors.transparent,
                            ),
                          ],
                        ),

                        // =============== Details ====================

                        Container(
                          height: MediaQuery.of(context).size.height * 0.145,
                          width: MediaQuery.of(context).size.width * 0.268,
                          decoration: BoxDecoration(
                            color: Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                    CupertinoIcons.exclamationmark_circle_fill),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Text(
                                    "We are currently working on solving some issues with Wise Card—this is causing our support wait time to be a little longer. Your card should be working now. We are still processing some transactions and funds should be released by May 25th.",
                                    style: GoogleFonts.poppins(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.00625),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SelectableText(
                          "Explore all topics",
                          style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width * 0.01,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // ========================================================================
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.145,
                                width:
                                    MediaQuery.of(context).size.width * 0.0854,
                                decoration: BoxDecoration(
                                  color: Color(0xffD9D9D9),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(CupertinoIcons.arrow_up_circle),
                                    SelectableText(
                                      "Sending Money",
                                      style: GoogleFonts.poppins(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.00625,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SelectableText(
                                      "setting up, ping for editing and cancelling transfers",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.00625,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // ============================================================================

                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.145,
                                width:
                                    MediaQuery.of(context).size.width * 0.0854,
                                decoration: BoxDecoration(
                                  color: Color(0xffD9D9D9),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(CupertinoIcons.arrow_down_circle),
                                    SelectableText(
                                      "Receiving money ",
                                      style: GoogleFonts.poppins(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.00625,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SelectableText(
                                      "using your account details to receive money",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.00625,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // ============================================================================

                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.145,
                                width:
                                    MediaQuery.of(context).size.width * 0.0854,
                                decoration: BoxDecoration(
                                  color: Color(0xffD9D9D9),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(CupertinoIcons.lock),
                                    SelectableText(
                                      "Holding money",
                                      style: GoogleFonts.poppins(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.00625,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SelectableText(
                                      "holding balances setting up direct debits and using internet and stocks.",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.00625,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SelectableText(
                          "Still Need Help?",
                          style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width * 0.01,
                            fontWeight: FontWeight.bold,
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
