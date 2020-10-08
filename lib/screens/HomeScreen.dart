import 'package:flutter/material.dart';
import 'package:flutter_magazine/data.dart';
import 'package:flutter_magazine/widgets/CustomAppBar.dart';
import 'package:flutter_magazine/widgets/CustomTabBarView.dart';
import 'package:flutter_magazine/widgets/VerticalCard.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CustomAppBar(),
              SizedBox(
                height: 16.0,
              ),
              Container(
                height: 300.0,
                child: ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => VerticalCard(
                          onPress: () => Navigator.of(context)
                              .pushNamed("/details", arguments: data[index]),
                          poster: data[index]["poster"],
                          title: data[index]['title'],
                          publishedDate: data[index]['publishedDate'],
                        ),
                    itemCount: data.length),
              ),
              Expanded(
                child: CustomTabBarView(),
              )
            ],
          ),
        ));
  }
}
