import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Color borderColor, iconColor, backgroundColor;
  final double iconSize;

  const CustomIconButton(
      {Key key,
      @required this.icon,
      @required this.borderColor,
      @required this.iconSize,
      @required this.iconColor,
      this.backgroundColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: borderColor, width: 1)),
      padding: EdgeInsets.all(12.0),
      child: Icon(
        icon,
        size: iconSize,
        color: iconColor,
      ),
    );
  }
}
