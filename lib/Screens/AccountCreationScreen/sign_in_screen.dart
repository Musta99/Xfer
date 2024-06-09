import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xfer_web/Screens/AccountCreationScreen/email_verification_1.dart';
import 'package:xfer_web/Screens/AccountCreationScreen/forget_password_screen.dart';
import 'package:xfer_web/Screens/AccountCreationScreen/sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isObsecuredSignIn = true;
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
                  "Log in to your Xfer Account",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111212),
                    fontSize: MediaQuery.of(context).size.width * 0.0161,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SelectableText(
                      "Don't have an account?",
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
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Register",
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

                // ======================== Password ====================================
                TextFormField(
                  obscureText: isObsecuredSignIn,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isObsecuredSignIn = !isObsecuredSignIn;
                          });
                        },
                        child: isObsecuredSignIn == true
                            ? Icon(
                                CupertinoIcons.eye,
                                color: Colors.black,
                              )
                            : Icon(
                                CupertinoIcons.eye_slash,
                                color: Colors.black,
                              )),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xffD9D9D9),
                    hintText: "Password",
                    hintStyle: GoogleFonts.poppins(
                      color: Color(0xff52525B),
                      fontSize: MediaQuery.of(context).size.width * 0.01,
                    ),
                  ),
                ),

                // =========================== Button ===============================

                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.31,
                    decoration: BoxDecoration(
                      color: Color(0xff00255B),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Register",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFFFFFF),
                          fontSize: MediaQuery.of(context).size.width * 0.012,
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => ForgetPasswordScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Forgot your password?",
                    style: GoogleFonts.poppins(
                        color: Color(0xff71717A),
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
