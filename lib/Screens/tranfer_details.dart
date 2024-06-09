import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:xfer_web/Screens/recepients_details.dart';
import 'package:xfer_web/Services/currency_with_flag_api.dart';

class TransferDetails extends StatefulWidget {
  const TransferDetails({super.key});

  @override
  State<TransferDetails> createState() => _TransferDetailsState();
}

class _TransferDetailsState extends State<TransferDetails> {
  // String currencyName = "";
  // String flagImage = "";
  // late Future<List<CurrencyFlag>> _futureCurrency;
  // String? _selectedCurrency;
  // var url =
  //     "https://gist.githubusercontent.com/ibrahimhajjaj/a0e39e7330aebf0feb49912f1bf9062f/raw/d160e7d3b0e11ea3912e97a1b3b25b359746c86a/currencies-with-flags.json";

  // Future<List<CurrencyFlag>> currencyAPI() async {
  //   var response = await http.get(Uri.parse(url));

  //   if (response.statusCode == 200) {
  //     // Parse JSON response
  //     List<dynamic> jsonList = jsonDecode(response.body);
  //     // Map each JSON object to a CurrencyFlag object
  //     List<CurrencyFlag> currencyFlags =
  //         jsonList.map((json) => CurrencyFlag.fromJson(json)).toList();
  //     for (var i = 0; i < currencyFlags.length; i++) {
  //       print(currencyFlags[i].country);
  //     }
  //     return currencyFlags;
  //   } else {
  //     throw Exception('Failed to load currency flags ${response.statusCode}');
  //   }
  // }

  double bankFee = 0;
  double ourFee = 0.94;
  double rate = 1.62;

  double? totalRemaining;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width * 0.3,
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 23),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // ========================================================================
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SelectableText(
                                "You send exactly",
                                style: GoogleFonts.poppins(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.008,
                                ),
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  setState(() {
                                    totalRemaining = double.parse(value);
                                  });
                                },
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  border: OutlineInputBorder(),
                                  suffixIcon: Padding(
                                    padding: EdgeInsets.only(
                                      right: 15,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CircleAvatar(),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text("Currency")
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // ========================================================================
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SelectableText(
                                "You send exactly",
                                style: GoogleFonts.poppins(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.008,
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  side: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                child: ListTile(
                                  tileColor: Colors.white,
                                  leading: CircleAvatar(
                                    child: Icon(
                                      CupertinoIcons.home,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // ================================================================================

                        Container(
                          child: Column(
                            children: [
                              //  =============== Bank Transfer fee  ==========================
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius:
                                            MediaQuery.of(context).size.width *
                                                0.004,
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      SelectableText(
                                        "${bankFee} GBP",
                                        style: GoogleFonts.poppins(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.008,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                  SelectableText(
                                    "Bank transfer fee",
                                    style: GoogleFonts.poppins(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.008,
                                    ),
                                  )
                                ],
                              ),

                              //  =============== Xfer Fee fee  ==========================
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius:
                                            MediaQuery.of(context).size.width *
                                                0.004,
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      SelectableText(
                                        "${ourFee} GBP",
                                        style: GoogleFonts.poppins(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.008,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                  SelectableText(
                                    "Our fee",
                                    style: GoogleFonts.poppins(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.008,
                                    ),
                                  )
                                ],
                              ),

                              //  =============== Total fee  ==========================
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius:
                                            MediaQuery.of(context).size.width *
                                                0.004,
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      SelectableText(
                                        "${bankFee + ourFee} GBP",
                                        style: GoogleFonts.poppins(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.008,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                  SelectableText(
                                    "Total Fee",
                                    style: GoogleFonts.poppins(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.008,
                                    ),
                                  )
                                ],
                              ),

                              //  =============== Total Amount We'll Convert  ==========================
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius:
                                            MediaQuery.of(context).size.width *
                                                0.004,
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      SelectableText(
                                        totalRemaining == null
                                            ? "0.00"
                                            : "${((totalRemaining)! - (bankFee + ourFee)).toStringAsFixed(1)} GBP",
                                        style: GoogleFonts.poppins(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.008,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                  SelectableText(
                                    "Total Amount we'll convert",
                                    style: GoogleFonts.poppins(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.008,
                                    ),
                                  )
                                ],
                              ),
                              //  =============== Rate  ==========================
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius:
                                            MediaQuery.of(context).size.width *
                                                0.004,
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      SelectableText(
                                        "${rate}",
                                        style: GoogleFonts.poppins(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.008,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                  SelectableText(
                                    "Guaranteed rate (12 Hours)",
                                    style: GoogleFonts.poppins(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.008,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),

                        // ========================================================================
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SelectableText(
                                "Recipient get",
                                style: GoogleFonts.poppins(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.008,
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  side: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                child: ListTile(
                                    tileColor: Colors.white,
                                    title: Text(
                                      totalRemaining == null
                                          ? "0.00"
                                          : "${(((totalRemaining)! - (bankFee + ourFee)) * rate).toStringAsFixed(1)} GBP",
                                    ),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CircleAvatar(),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text("Currency")
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        ),

                        SelectableText(
                          "You could save up to 5.92 GBP",
                          style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width * 0.008,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        SelectableText(
                          "Should arrive by Thursday",
                          style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width * 0.008,
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.045,
                              width: MediaQuery.of(context).size.width * 0.109,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Compare Price",
                                  style: GoogleFonts.poppins(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.00625,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
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
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.045,
                                width:
                                    MediaQuery.of(context).size.width * 0.109,
                                decoration: BoxDecoration(
                                  color: Color(0xff00255B),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Continue",
                                    style: GoogleFonts.poppins(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.00625,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}
