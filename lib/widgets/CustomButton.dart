import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final IconData icon;

  const CustomButton({Key key, @required this.title, @required this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 25,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[Icon(icon), SizedBox(width: 8.0), Text(title)],
        ),
      ),
    );
  }
}
