import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xfer_web/Screens/AccountCreationScreen/email_confirmation_screen.dart';

class CheckEmailMessage extends StatelessWidget {
  const CheckEmailMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00255B),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.34,
          height: MediaQuery.of(context).size.height * 0.60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.0356,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/icons/tick_icon.png",
                  width: MediaQuery.of(context).size.width * 0.064,
                  height: MediaQuery.of(context).size.height * 0.113,
                ),
                SelectableText(
                  "Please check your email now",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111212),
                    fontSize: MediaQuery.of(context).size.width * 0.0161,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: SelectableText(
                        "We have sent you instruction to John Smith51526272@gmail.com for resetting your password if you have not received an email from us with in a couple of minutes please check your spam folder",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff71717A),
                          fontSize: MediaQuery.of(context).size.width * 0.0088,
                        ),
                      ),
                    ),
                  ],
                ),

                // ======================== Code Send Button ====================================

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SelectableText(
                      "Still having trouble?",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff71717A),
                        fontSize: MediaQuery.of(context).size.width * 0.0088,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EmailConfirmationScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Continue to Help",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff336DEC),
                          fontSize: MediaQuery.of(context).size.width * 0.0088,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
