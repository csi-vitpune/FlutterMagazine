import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  final String title, poster, publishedDate;
  final double price, rating;
  final VoidCallback onPress;
  const DetailCard(
      {Key key,
      @required this.title,
      @required this.poster,
      @required this.price,
      @required this.rating,
      @required this.publishedDate,
      this.onPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress ?? () {},
      child: Container(
        // color: Colors.black,
        // height: 160,
        // width: double.infinity,
        padding: EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: poster,
              child: Container(
                width: 80.0,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage(poster), fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 20,
                      offset: Offset(0, 20), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            title,
                            style:
                                Theme.of(context).textTheme.subtitle1.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Text(
                            publishedDate,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFBBBBBB)),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.bookmark_border,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 20.0,
                        color: Colors.yellow[600],
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        '$rating',
                        style: Theme.of(context).textTheme.subtitle2.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Spacer(),
                      Text(
                        '\$$price',
                        style: Theme.of(context).textTheme.subtitle2.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
