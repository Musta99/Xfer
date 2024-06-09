import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xfer_web/Screens/Dasboard/Widgets/card_container.dart';
import 'package:xfer_web/Screens/Dasboard/Widgets/category_button.dart';
import 'package:xfer_web/Screens/SettingsScreen/settings_screen.dart';
import 'package:xfer_web/Screens/notification_screen.dart';
import 'package:xfer_web/Screens/profile_screen.dart';
import 'package:xfer_web/Screens/recepients_details.dart';
import 'package:xfer_web/Screens/tranfer_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

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
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.18,
                        child: TextFormField(
                          style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width * 0.009,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              CupertinoIcons.search,
                            ),
                            hintText: "Name or Amount",
                            filled: true,
                            fillColor: Color(0xffD9D9D9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Color(0xffD9D9D9),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Color(0xffD9D9D9),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.026,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NotoficationScreen(),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          child: Icon(
                            CupertinoIcons.bell,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.026,
                      ),
                      CircleAvatar(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.016,
                      ),
                      SelectableText(
                        "User Name",
                        style: GoogleFonts.poppins(
                            fontSize:
                                MediaQuery.of(context).size.width * 0.009),
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
              height: MediaQuery.of(context).size.height * 0.9,
              color: Color(0xff264470),
              child: Row(
                children: [
                  // ======================= Side bar ===============================
                  Container(
                    width: MediaQuery.of(context).size.width * 0.12,
                    child: Column(
                      children: [
                        CategoryButton(
                          icon: CupertinoIcons.home,
                          title: "Home",
                        ),
                        CategoryButton(
                          icon: CupertinoIcons.creditcard,
                          title: "Card",
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RecepientDetails(),
                              ),
                            );
                          },
                          child: CategoryButton(
                            icon: CupertinoIcons.person_2,
                            title: "Recipients",
                          ),
                        ),
                        CategoryButton(
                          icon: CupertinoIcons.bag,
                          title: "Payments",
                        ),
                        CategoryButton(
                          icon: CupertinoIcons.money_dollar_circle,
                          title: "Exchange \nRates",
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.037,
                        ),
                        SizedBox(
                          width: 120,
                          child: Divider(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.037,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SettingsScreen(),
                              ),
                            );
                          },
                          child: CategoryButton(
                            icon: CupertinoIcons.gear,
                            title: "Settings",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileScreen(),
                              ),
                            );
                          },
                          child: CategoryButton(
                            icon: CupertinoIcons.person,
                            title: "Account",
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.045,
                        ),
                        CategoryButton(
                          icon: CupertinoIcons.arrow_left_circle,
                          title: "Log out",
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.white,
                  ),

                  // ======================= Content ===============================
                  Container(
                    width: MediaQuery.of(context).size.width * 0.86,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          // ======================= Balance ==================
                          Container(
                            height: MediaQuery.of(context).size.height * 0.065,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SelectableText(
                                  "Account Balance",
                                  style: GoogleFonts.poppins(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.0093,
                                    color: Colors.white,
                                  ),
                                ),
                                SelectableText(
                                  "\$800",
                                  style: GoogleFonts.poppins(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.0125,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // ======================= Type ==================
                          Container(
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TransferDetails(),
                                      ),
                                    );
                                  },
                                  child: CardContainer(
                                    title: "Send Money",
                                    imagePath: "assets/images/send.png",
                                  ),
                                ),
                                CardContainer(
                                  title: "Receive Money",
                                  imagePath: "assets/images/receive.png",
                                ),
                                CardContainer(
                                  title: "Deposit Money",
                                  imagePath: "assets/images/deposit.png",
                                ),
                              ],
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // ================== Charts and history =================
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Column(
                                  children: [
                                    // ================= Transactions ============

                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.35,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              SelectableText(
                                                "Transactions",
                                                style: GoogleFonts.poppins(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.008,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          ListTile(
                                            leading: CircleAvatar(),
                                            title: SelectableText(
                                              "Name",
                                              style: GoogleFonts.poppins(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.008,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            subtitle: SelectableText(
                                              "Date and time",
                                              style: GoogleFonts.poppins(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.008,
                                                color: Colors.white,
                                              ),
                                            ),
                                            trailing: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(
                                                  CupertinoIcons.arrow_down,
                                                  color: Colors.blue,
                                                ),
                                                SelectableText(
                                                  "\$490.00",
                                                  style: GoogleFonts.poppins(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.008,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          ListTile(
                                            leading: CircleAvatar(),
                                            title: SelectableText(
                                              "Name",
                                              style: GoogleFonts.poppins(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.008,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            subtitle: SelectableText(
                                              "Date and time",
                                              style: GoogleFonts.poppins(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.008,
                                                color: Colors.white,
                                              ),
                                            ),
                                            trailing: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(
                                                  CupertinoIcons.arrow_down,
                                                  color: Colors.blue,
                                                ),
                                                SelectableText(
                                                  "\$490.00",
                                                  style: GoogleFonts.poppins(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.008,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          ListTile(
                                            leading: CircleAvatar(),
                                            title: SelectableText(
                                              "Name",
                                              style: GoogleFonts.poppins(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.008,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            subtitle: SelectableText(
                                              "Date and time",
                                              style: GoogleFonts.poppins(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.008,
                                                color: Colors.white,
                                              ),
                                            ),
                                            trailing: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(
                                                  CupertinoIcons.arrow_down,
                                                  color: Colors.blue,
                                                ),
                                                SelectableText(
                                                  "\$490.00",
                                                  style: GoogleFonts.poppins(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.008,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    // ================= Charts ============

                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.22,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              SelectableText(
                                                "Statistics",
                                                style: GoogleFonts.poppins(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.008,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    // ================= Exchange Rates ============

                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.32,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              SelectableText(
                                                "Exchange Rates",
                                                style: GoogleFonts.poppins(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.008,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            color: Colors.white,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.25,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // ================== Debit Cards =================
                              Container(
                                width: MediaQuery.of(context).size.width * 0.22,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/images/visa1.png",
                                      width: MediaQuery.of(context).size.width *
                                          0.206,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.22,
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.022,
                                    ),
                                    Image.asset(
                                      "assets/images/visa2.png",
                                      width: MediaQuery.of(context).size.width *
                                          0.206,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.22,
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.022,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.35,
                                      child: Column(
                                        children: [
                                          SelectableText(
                                            "Monthly Remittance \n Summary",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.008,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.26,
                                            color: Color(0xff4495C7),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
