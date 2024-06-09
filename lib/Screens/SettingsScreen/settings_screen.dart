import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xfer_web/Screens/SettingsScreen/Widgets/settings_card.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
                  height: MediaQuery.of(context).size.height * 0.835,
                  width: MediaQuery.of(context).size.width * 0.53,
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 22,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),

                          SelectableText(
                            "Settings",
                            style: GoogleFonts.poppins(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.0125,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.016,
                          ),

                          // =============== Details ====================
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SettingsCard(
                                  title: "Email Settings",
                                  subtitle: "User's Email",
                                  icon: CupertinoIcons.mail,
                                ),
                                SettingsCard(
                                  title: "Notifications",
                                  subtitle:
                                      "Choose What we get in touch about ",
                                  icon: CupertinoIcons.bell_circle_fill,
                                ),
                                SettingsCard(
                                  title: "Connected Account",
                                  subtitle:
                                      "Tools Platforms and bank connected to Xfer",
                                  icon: CupertinoIcons.share,
                                ),
                                SettingsCard(
                                  title: "Language Settings",
                                  subtitle: "English(UK)",
                                  icon: CupertinoIcons.globe,
                                ),
                                SettingsCard(
                                  title: "Change Password",
                                  subtitle: "**********",
                                  icon: CupertinoIcons.lock,
                                ),
                                SettingsCard(
                                  title: "Connect to Xfer",
                                  subtitle:
                                      "Send and receive from people on  Xfer  without using bank details.",
                                  icon: CupertinoIcons.person_2,
                                ),
                                SettingsCard(
                                  title: "2 Step Verification",
                                  subtitle:
                                      "Manage your 2 step verification Method",
                                  icon: CupertinoIcons.phone,
                                ),
                                SettingsCard(
                                  title: "Exchange rate alert",
                                  subtitle: "Manage your exchange rate alerts",
                                  icon: CupertinoIcons.increase_indent,
                                ),
                                SettingsCard(
                                  title: "Close your account",
                                  subtitle: "If you want to stop using Xfer.",
                                  icon: Icons.multiple_stop_outlined,
                                ),
                              ],
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
