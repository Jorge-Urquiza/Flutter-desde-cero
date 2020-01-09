import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class CardPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('EN VENTA'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),

        children: <Widget>[
           _cardTipo1(),
          SizedBox(height: 15,),
          _cardTipo2(),
          SizedBox(height: 30,),

          _cardTipo1(),
          SizedBox(height: 15,),
          _cardTipo2(),
          SizedBox(height: 30,),

          _cardTipo1(),
          SizedBox(height: 15,),
          _cardTipo2(),
          SizedBox(height: 30,),

          _cardTipo1(),
          SizedBox(height: 15,),
          _cardTipo2(),
          SizedBox(height: 30,),


          _cardTipo1(),
          SizedBox(height: 15,),
          _cardTipo2(),
          SizedBox(height: 30,),


          _cardTipo1(),
          SizedBox(height: 15,),
          _cardTipo2(),
          SizedBox(height: 30,),

          _cardTipo1(),
          SizedBox(height: 15,),
          _cardTipo2(),
          SizedBox(height: 30,),

          _cardTipo1(),
          SizedBox(height: 15,),
          _cardTipo2(),
          SizedBox(height: 30,),


          _cardTipo1(),
          SizedBox(height: 15,),
          _cardTipo2(),
          SizedBox(height: 30,),

          _cardTipo1(),
          SizedBox(height: 15,),
          _cardTipo2(),
          SizedBox(height: 30,),


        ],
      ),
    );
  }
  Widget _cardTipo2(){
    final card= Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://cdn.mos.cms.futurecdn.net/FUE7XiFApEqWZQ85wYcAfM.jpg'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
          ),


          Container(
            padding: EdgeInsets.all(8),
            child: Text("PRECIO 20000 USD"),
          )
        ],
      ),
    );
    //Container es un equivalente al DIV en html
    return Container(
     
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: <BoxShadow>[
         BoxShadow(
           color: Colors.black26,
           blurRadius: 10.0,
           spreadRadius: 1.0,
           offset: Offset(2.0,10.0)
         )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: card,
      ),
    );
  }
  Widget _cardTipo1(){
      return Card(
        elevation: 11.5, //sombra
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.5)
        ),
         child: Column(
           children: <Widget>[
             ListTile(
               title: Text('Card-Title',
                 style: TextStyle(fontWeight: FontWeight.bold,
                     fontSize: 24,
                     color: Colors.black.withOpacity(0.6)),),
               subtitle: Text('Sometimes the primary action area of a card is the'
                   ' card itself. Cards can be one large touch target that shows a '
                   'detail screen when tapped.',style: TextStyle(fontWeight: FontWeight.bold),),
               leading: Icon(Icons.group,color: Colors.blue,),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text("Cancelar",style: TextStyle(fontWeight: FontWeight.bold),),
                  color: Colors.deepOrange,
                  onPressed: (){
                    Fluttertoast.showToast(
                        msg: "Clicked Cancel",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIos: 1,
                        textColor: Colors.deepOrange
                    );
                  },
                ),
                FlatButton(
                  child: Text("OK",style: TextStyle(fontWeight: FontWeight.bold),),
                  color: Colors.cyanAccent,

                  onPressed: (){
                    Fluttertoast.showToast(
                        msg: "Clicked OK",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIos: 1,
                        textColor: Colors.cyanAccent
                    );
                  },
                ),
              ],
             )
           ],
         ),
      );
  }
}

