import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Vista Avatar"),
        actions: <Widget>[
           // es parecido a los dialogs
          Container(
          padding: EdgeInsets.all(5),
            child:  CircleAvatar(
              backgroundImage: NetworkImage("https://pbs.twimg.com/media/D6alZKUXkAAXFI_.jpg"),
              radius: 25,
            ),
          ),
           Container(
              margin: EdgeInsets.only(right: 10),
              child:  CircleAvatar(
                child: Text("SL"),
                backgroundColor: Colors.brown,
              ),
           )
        ],
      ),
      body: Center(
         child: FadeInImage(
           placeholder: AssetImage("()assets/loading.gif"),
            fadeInDuration: Duration(milliseconds: 200),
            image: NetworkImage("https://i0.wp.com/cd1.eju.tv/wp-content/uploads/2017/08/599b26cc47b03.jpg"),
         ),
      ),
    );
  }
}