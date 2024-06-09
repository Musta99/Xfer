import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xfer_web/Screens/AccountCreationScreen/check_email_message.dart';

class EmailVerification1 extends StatelessWidget {
  const EmailVerification1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00255B),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.34,
          height: MediaQuery.of(context).size.height * 0.85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.034,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/images/xfer_card.png",
                  width: MediaQuery.of(context).size.width * 0.13,
                  height: MediaQuery.of(context).size.height * 0.31,
                ),
                SelectableText(
                  "Verify your email address.",
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
                        "Tap the link in the email we have sent you to John Smith51526272@gmail.com. The link will be valid for 30 minutes.",
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
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckEmailMessage(),
                      ),
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.042,
                    width: MediaQuery.of(context).size.width * 0.07,
                    decoration: BoxDecoration(
                      color: Color(0xffE5DEDE),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Send again",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000),
                          fontSize: MediaQuery.of(context).size.width * 0.0067,
                        ),
                      ),
                    ),
                  ),
                ),

                // =========================== Button ===============================

                Container(
                  height: MediaQuery.of(context).size.height * 0.042,
                  width: MediaQuery.of(context).size.width * 0.07,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff000000),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "Go to Login",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000),
                        fontSize: MediaQuery.of(context).size.width * 0.007,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
