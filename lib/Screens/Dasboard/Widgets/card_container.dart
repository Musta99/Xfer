import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardContainer extends StatelessWidget {
  String title;
  String imagePath;
  CardContainer({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.16,
      width: MediaQuery.of(context).size.width * 0.138,
      decoration: BoxDecoration(
        color: Color(0xff2596FF),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.width * 0.012,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Icon(
                CupertinoIcons.arrow_right_square_fill,
                color: Colors.white,
              )
            ],
          ),
          Image.asset(
            imagePath,
            width: MediaQuery.of(context).size.width * 0.07,
            height: MediaQuery.of(context).size.height * 0.11,
          )
        ],
      ),
    );
  }
}
