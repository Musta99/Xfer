import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xfer_web/Screens/AccountCreationScreen/email_verification_1.dart';
import 'package:xfer_web/Screens/AccountCreationScreen/sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = false;
  bool isObsecured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00255B),
      body: Container(
        child: Row(
          children: [
            // =========================== ============================
            //                     Description
            // ========================================================

            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SelectableText(
                    "Transform Cash to digital \n Receive, Send, Pay",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFFFFFF),
                      fontSize: MediaQuery.of(context).size.width * 0.0167,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.033,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.26,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset("assets/images/earth.png"),
                        ),
                        Expanded(
                          child: SelectableText(
                            "Join Millions who already Use Xfer to safely pay online and send money any where in the world.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff0D0B0B),
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.0114,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // =========================== ============================
            //                     Sign Up Fields
            // ========================================================

            Container(
              width: MediaQuery.of(context).size.width * 0.368,
              height: MediaQuery.of(context).size.height * 0.86,
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
                      "Sign up",
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
                          "Already have an account?",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff71717A),
                            fontSize:
                                MediaQuery.of(context).size.width * 0.0088,
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
                          child: Text(
                            "Log in",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff336DEC),
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.0088,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // ======================== First Name, Last Name ======================================
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Color(0xffD9D9D9),
                              hintText: "First Name",
                              hintStyle: GoogleFonts.poppins(
                                color: Color(0xff52525B),
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.01,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.0167,
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Color(0xffD9D9D9),
                              hintText: "Last Name",
                              hintStyle: GoogleFonts.poppins(
                                color: Color(0xff52525B),
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.01,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    // ======================== Country - Currency ====================================

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DropdownMenu(
                          menuHeight: 300,
                          hintText: "Country",
                          inputDecorationTheme: InputDecorationTheme(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color(0xffD9D9D9),
                            hintStyle: GoogleFonts.poppins(
                              color: Color(0xff52525B),
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.01,
                            ),
                          ),
                          width: MediaQuery.of(context).size.width * 0.15,
                          dropdownMenuEntries: countryList,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                        DropdownMenu(
                          menuHeight: 300,
                          hintText: "Currency",
                          inputDecorationTheme: InputDecorationTheme(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color(0xffD9D9D9),
                            hintStyle: GoogleFonts.poppins(
                              color: Color(0xff52525B),
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.01,
                            ),
                          ),
                          width: MediaQuery.of(context).size.width * 0.1,
                          dropdownMenuEntries: currencyList,
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
                      obscureText: isObsecured,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isObsecured = !isObsecured;
                              });
                            },
                            child: isObsecured == true
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

                    // ======================== CheckBox ====================================

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                          activeColor: Color(0xff00255B),
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        Expanded(
                          child: SelectableText(
                            "Get offers from carefully selected Xfer partners. We'll not share your personal data, but will send you marketing messages on their behalf.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff71717A),
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.0073,
                            ),
                          ),
                        )
                      ],
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
                        height: MediaQuery.of(context).size.height * 0.09,
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
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.012,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<DropdownMenuEntry> countryList = [
  DropdownMenuEntry(value: "Afganistan", label: "Afganistan"),
  DropdownMenuEntry(value: "Albania", label: "Albania"),
  DropdownMenuEntry(value: "Algeria", label: "Algeria"),
  DropdownMenuEntry(value: "Argentina", label: "Argentina"),
  DropdownMenuEntry(value: "Angola", label: "Angola"),
  DropdownMenuEntry(value: "Australia", label: "Australia"),
  DropdownMenuEntry(value: "Bangladesh", label: "Bangladesh"),
  DropdownMenuEntry(value: "Bahrain", label: "Bahrain"),
  DropdownMenuEntry(value: "Belarus", label: "Belarus"),
  DropdownMenuEntry(value: "Belgium", label: "Belgium"),
  DropdownMenuEntry(value: "Bermuda", label: "Bermuda"),
  DropdownMenuEntry(value: "Bhutan", label: "Bhutan"),
  DropdownMenuEntry(value: "Bolivia", label: "Bolivia"),
  DropdownMenuEntry(value: "Bosnia", label: "Bosnia"),
  DropdownMenuEntry(value: "Brazil", label: "Brazil"),
  DropdownMenuEntry(value: "Bulgaria", label: "Bulgaria"),
  DropdownMenuEntry(value: "Canada", label: "Canada"),
  DropdownMenuEntry(value: "China", label: "China"),
  DropdownMenuEntry(value: "Colombia", label: "Colombia"),
  DropdownMenuEntry(value: "Croatia", label: "Croatia"),
  DropdownMenuEntry(value: "Cyprus", label: "Cyprus"),
  DropdownMenuEntry(value: "Czech-Republic", label: "Czech-Rebuplic"),
  DropdownMenuEntry(value: "Denmark", label: "Denmark"),
  DropdownMenuEntry(value: "Dominica", label: "Dominica"),
  DropdownMenuEntry(value: "Egypt", label: "Egypt"),
  DropdownMenuEntry(value: "Estonia", label: "Estonia"),
  DropdownMenuEntry(value: "Ethiopia", label: "Ethiopia"),
  DropdownMenuEntry(value: "Fiji", label: "Fiji"),
  DropdownMenuEntry(value: "Finland", label: "Finland"),
  DropdownMenuEntry(value: "France", label: "France"),
  DropdownMenuEntry(value: "Germany", label: "Germany"),
  DropdownMenuEntry(value: "Greece", label: "Greece"),
  DropdownMenuEntry(value: "Gabon", label: "Gabon"),
  DropdownMenuEntry(value: "Ghana", label: "Ghana"),
  DropdownMenuEntry(value: "Honduras", label: "Honduras"),
  DropdownMenuEntry(value: "Hungary", label: "Hungary"),
  DropdownMenuEntry(value: "India", label: "India"),
  DropdownMenuEntry(value: "Iran", label: "Iran"),
  DropdownMenuEntry(value: "Ireland", label: "Ireland"),
  DropdownMenuEntry(value: "Italy", label: "Italy"),
  DropdownMenuEntry(value: "Japan", label: "Japan"),
  DropdownMenuEntry(value: "Jordan", label: "Jordan"),
  DropdownMenuEntry(value: "Kazakhstan", label: "Kazakhstan"),
  DropdownMenuEntry(value: "Kosovo", label: "Kosovo"),
];

List<DropdownMenuEntry> currencyList = [
  DropdownMenuEntry(value: "AED", label: "AED"),
  DropdownMenuEntry(value: "AFN", label: "AFN"),
  DropdownMenuEntry(value: "AUD", label: "AUD"),
  DropdownMenuEntry(value: "BDT", label: "BDT"),
  DropdownMenuEntry(value: "BGN", label: "BGN"),
  DropdownMenuEntry(value: "BHD", label: "BHD"),
  DropdownMenuEntry(value: "BRL", label: "BRL"),
  DropdownMenuEntry(value: "CAD", label: "CAD"),
  DropdownMenuEntry(value: "CHF", label: "CHF"),
  DropdownMenuEntry(value: "CZK", label: "CZK"),
  DropdownMenuEntry(value: "DKK", label: "DKK"),
  DropdownMenuEntry(value: "EGP", label: "EGP"),
  DropdownMenuEntry(value: "EUR", label: "EUR"),
  DropdownMenuEntry(value: "GBP", label: "GBP"),
  DropdownMenuEntry(value: "INR", label: "INR"),
  DropdownMenuEntry(value: "USD", label: "USD"),
];
