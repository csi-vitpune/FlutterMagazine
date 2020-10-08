import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_magazine/widgets/CustomButton.dart';
import 'package:flutter_magazine/widgets/CustomIconButton.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white, statusBarBrightness: Brightness.dark));
    final Map data = ModalRoute.of(context).settings.arguments;
    print(data);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: false,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: data['poster'],
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 1.7,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(35.0)),
                      image: DecorationImage(
                          image: AssetImage(data['poster']), fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.center,
                      colors: [
                        const Color(0xAA000000),
                        const Color(0x88000000),
                        const Color(0x22000000),
                        const Color(0x00000000),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.keyboard_backspace,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          "Back",
                          style: Theme.of(context).textTheme.subtitle1.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 20,
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                ),
                Positioned.fill(
                  bottom: 10.0,
                  // right: 20,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 75.0,
                      height: 5.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 32.0,
            ),
            Text(
              data['publishedDate'],
              style: Theme.of(context).textTheme.subtitle2.copyWith(
                  color: Colors.grey[400], fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              data['title'],
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 32.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomButton(
                  icon: Icons.text_format,
                  title: "Description",
                ),
                SizedBox(width: 16.0),
                CustomButton(
                  icon: Icons.chat_bubble_outline,
                  title: "Reviews",
                ),
              ],
            ),
            SizedBox(
              height: 32.0,
            ),
            Spacer(),
            Divider(
              color: Colors.grey[200],
              indent: 30.0,
              endIndent: 30.0,
              thickness: 1.0,
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("\$ ${data['price']}",
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(fontWeight: FontWeight.bold)),
                      SizedBox(height: 4.0),
                      Text("without delivery",
                          style: Theme.of(context).textTheme.caption.copyWith(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Spacer(),
                  CustomIconButton(
                    icon: Icons.bookmark_border,
                    borderColor: Colors.grey[200],
                    iconSize: 24.0,
                    iconColor: Colors.black,
                  ),
                  SizedBox(width: 16.0),
                  CustomIconButton(
                    icon: Icons.shopping_basket,
                    borderColor: Colors.black,
                    iconSize: 24.0,
                    iconColor: Colors.white,
                    backgroundColor: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
