import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xfer_web/Screens/AccountCreationScreen/email_verification_1.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00255B),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.34,
          height: MediaQuery.of(context).size.height * 0.55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SelectableText(
                  "Forgot your password?",
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
                        "To reset your password enter the email address that you use to set up your Xfer account. we'll send you a link to help you get back into your account.",
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

                // ======================== Email ====================================
                TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xffD9D9D9),
                    hintText: "Your Email",
                    hintStyle: GoogleFonts.poppins(
                      color: Color(0xff52525B),
                      fontSize: MediaQuery.of(context).size.width * 0.01,
                    ),
                  ),
                ),

                // =========================== Button ===============================

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EmailVerification1(),
                      ),
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.31,
                    decoration: BoxDecoration(
                      color: Color(0xffE5DEDE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Send",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000),
                          fontSize: MediaQuery.of(context).size.width * 0.012,
                        ),
                      ),
                    ),
                  ),
                ),

                // ========================== TextButton ======================================

                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Back",
                    style: GoogleFonts.poppins(
                        color: Color(0xff00255B),
                        fontSize: MediaQuery.of(context).size.width * 0.01,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
