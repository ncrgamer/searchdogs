import 'package:flutter/material.dart';

class ShowPage extends StatefulWidget {
   String name;
   String image;
  
   ShowPage({Key key, this.name, this.image}) : super(key: key);

  @override
  _ShowPageState createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
         
        Container(
           width: MediaQuery.of(context).size.width,
          height: 350,
          decoration: BoxDecoration(

            color: Colors.orangeAccent,
            borderRadius: BorderRadius.only(
              bottomLeft:Radius.circular(20),
              bottomRight:Radius.circular(20),
              )
            
            ),

          child: Stack(children: <Widget>[
            Positioned
            (
              left: 85,
              bottom: 50,

            child:  ClipOval(
            child: Container(
              alignment: Alignment.bottomCenter,
              width: 250,
              height: 250,
              child: Image.network(widget.image),
            ),
          ),
          ),
          ],)
       
          ), 
          Text(
            widget.name,
            style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent,
                          fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
