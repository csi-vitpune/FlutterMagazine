import 'package:flutter/material.dart';
import 'package:flutter_magazine/data.dart';
import 'package:flutter_magazine/widgets/CustomAppBar.dart';
import 'package:flutter_magazine/widgets/CustomTabBarView.dart';
import 'package:flutter_magazine/widgets/VerticalCard.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(title: CustomAppBar(), backgroundColor: Colors.white,elevation: 0.0, iconTheme: IconThemeData(color: Colors.black),),
        backgroundColor: Colors.white,
        body: HomeWidget(),
      );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              CustomAppBar(),
              SizedBox(
                height: 8.0,
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
              ),
              SizedBox(height: 100,)
            ],
          ),
        ),
      ),
    );
  }
}
