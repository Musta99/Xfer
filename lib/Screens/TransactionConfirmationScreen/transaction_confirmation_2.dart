import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionConfirmationScreen2 extends StatelessWidget {
  const TransactionConfirmationScreen2({super.key});

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
                  height: MediaQuery.of(context).size.height * 0.47,
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
                        Icon(
                          CupertinoIcons.checkmark_alt_circle,
                          size: MediaQuery.of(context).size.width * 0.0625,
                          color: Colors.green,
                        ),
                        Column(
                          children: [
                            SelectableText(
                              "Your Transaction was  Successful",
                              style: GoogleFonts.poppins(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.0125,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.016,
                            ),
                            SelectableText(
                              "Thank You for your Transaction . We will be in contact with more details shortly",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.01,
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
