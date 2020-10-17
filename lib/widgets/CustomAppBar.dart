import 'package:flutter/material.dart';
import 'package:flutter_magazine/screens/aboutpage.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 16.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutPage()),
                    );
            },
                      child: Icon(
              Icons.menu,
              size: 28.0,
            ),
          ),
          Text(
            "Magazine.",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
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
