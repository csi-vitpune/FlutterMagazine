import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            Icons.menu,
            size: 28.0,
          ),
          Text(
            "Magazine.",
            style: GoogleFonts.nunitoSans(
              fontWeight: FontWeight.bold, 
              fontSize: 33,
              letterSpacing: 1.2,
            ),
            
          ),
          Icon(
            Icons.search,
            size: 28.0,
          ),
        ],
      ),
    );
  }
}
