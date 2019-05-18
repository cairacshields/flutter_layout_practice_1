import 'package:flutter/material.dart';


class FavoriteWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _favoriteWidgetState();
}

class _favoriteWidgetState extends State<FavoriteWidget>{
  //Store the favorite count and the favorited boolean
  bool _isFavorited = true;
  int _count = 41;

  void _toggleFavorite(){
    setState(() {
      if(_isFavorited){
        _isFavorited = !_isFavorited;
        _count -= 1;
      }else{
        _isFavorited = !_isFavorited;
        _count += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
              icon: _isFavorited ? Icon(Icons.star) : Icon(Icons.star_border),
              color: Colors.red[500],
              onPressed: _toggleFavorite
          ),
        ),

        SizedBox(
          width: 18,
          child: Container(
            child: Text("$_count"),
          ),
        )

      ],
    );
  }

}

