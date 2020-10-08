import 'package:flutter/material.dart';
import 'package:flutter_magazine/data.dart';
import 'package:flutter_magazine/widgets/DetailCard.dart';

class CustomTabBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: width - (width / 3),
              child: TabBar(
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.black,
                  unselectedLabelStyle: Theme.of(context).textTheme.headline6,
                  labelStyle: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold),
                  indicatorColor: Colors.transparent,
                  tabs: [
                    Tab(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Popular",
                        ),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Newest",
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          Expanded(
            child: TabBarView(children: [
              // Container(),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (ctx, index) {
                  return DetailCard(
                    onPress: () => Navigator.of(context)
                        .pushNamed("/details", arguments: popular[index]),
                    poster: popular[index]['poster'],
                    price: popular[index]['price'],
                    publishedDate: popular[index]['publishedDate'],
                    rating: popular[index]['rating'],
                    title: popular[index]['title'],
                  );
                },
                itemCount: popular.length,
                separatorBuilder: (context, index) => Divider(
                  color: Colors.grey[300],
                  indent: 30.0,
                  endIndent: 30.0,
                  thickness: 1.0,
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (ctx, index) {
                  return DetailCard(
                    onPress: () => Navigator.of(context)
                        .pushNamed("/details", arguments: newest[index]),
                    poster: newest[index]['poster'],
                    price: newest[index]['price'],
                    publishedDate: newest[index]['publishedDate'],
                    rating: newest[index]['rating'],
                    title: newest[index]['title'],
                  );
                },
                itemCount: newest.length,
                separatorBuilder: (context, index) => Divider(
                  color: Colors.grey[400],
                  indent: 30.0,
                  endIndent: 30.0,
                  thickness: 1.0,
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
