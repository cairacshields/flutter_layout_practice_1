import 'package:flutter/material.dart';

import 'package:flutter_layout_practice_1/favorite_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    //A widget defining the title section
    Widget titleSection = Container(
      padding: EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              //Make container content start at left side
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Oeschinen Lake Campground",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500]
                  ),
                ),
              ],
            ),
          ),
          FavoriteWidget()
        ],
      ),
    );

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButtonColumn(Icons.airline_seat_individual_suite, "Lodging", Colors.blue),
          _buildButtonColumn(Icons.call, "Call", Colors.blue),
          _buildButtonColumn(Icons.map, "Find Place", Colors.blue),
        ],
      ),
    );

    Widget textSection = Container(
      padding: EdgeInsets.all(32),
      child: Text(
            'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese'
            'Alps. Situated 1,578 meters above sea level, it is one of the'
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );


    return MaterialApp(
      title: 'Flutter layout Demo',
      
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter layout Demo"),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              "images/lake.jpg",
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      )
    );}


    Column _buildButtonColumn (IconData icon, String label, Color color){
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Icon(
              icon,
              color: color,
            ),
            Container(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                label,
                style: TextStyle(
                  color: color,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        );
    }
}
