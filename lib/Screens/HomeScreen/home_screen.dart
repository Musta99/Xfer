import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xfer_web/Screens/AccountCreationScreen/sign_in_screen.dart';
import 'package:xfer_web/Screens/AccountCreationScreen/sign_up_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  Row(
                    children: [
                      Text(
                        "Send Money",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.026,
                      ),
                      Text(
                        "Receive Money",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.026,
                      ),
                      Icon(
                        CupertinoIcons.line_horizontal_3,
                      )
                    ],
                  ),
                ],
              ),
            ),
            // =========================== ============================
            //                     Body
            // ========================================================
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 50,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SelectableText(
                            "Send money to almost anywhere in the world",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff090914),
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.03125,
                            ),
                          ),
                          SelectableText(
                            "Never overspend your money again with smart budgeting feature.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.urbanist(
                              color: Color(0xff848FAC),
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.0167,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ),
                              );
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.1,
                              width: MediaQuery.of(context).size.width * 0.31,
                              decoration: BoxDecoration(
                                color: Color(0xff00255B),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "Sign up",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffFFFFFF),
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.012,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignInScreen(),
                                ),
                              );
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.1,
                              width: MediaQuery.of(context).size.width * 0.31,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(
                                  0xff00255B,
                                )),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "Sign in",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff00255B),
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.012,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Image.asset(
                      "assets/images/front_cover.png",
                    ),
                  ),
                ],
              ),
            ),
            // =========================== ============================
            //                     Footer
            // ========================================================
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
