import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerticalCard extends StatelessWidget {
  final String poster, title, publishedDate;
  final VoidCallback onPress;

  const VerticalCard(
      {Key key,
      @required this.poster,
      @required this.title,
      @required this.publishedDate,
      this.onPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress ?? () {},
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: poster,
              child: Container(
                width: 150.0,
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(poster),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 20,
                      offset: Offset(0, 15), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              title,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,                
                letterSpacing: 0.8,
                fontSize: 16,
              ),
               ),
            SizedBox(height: 8.0),
            Text(
              publishedDate,
              style: GoogleFonts.poppins(
                color: Color(0xFFBBBBBB),
                fontWeight: FontWeight.w600,  
                wordSpacing: 2,
                letterSpacing: 1.3,              
              )
            ),
          ],
        ),
      ),
    );
  }
}
