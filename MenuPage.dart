import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

Card makeCard = Card(
      elevation: 6.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: makeListTile,
      ),
    ); 
    
      final makeListTile = ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
          padding: EdgeInsets.only(right: 12.0),
          decoration: new BoxDecoration(
              border: new Border(
                  right: new BorderSide(width: 1.0, color: Colors.white24))),
          child: Icon(Icons.autorenew, color: Colors.white),
        ),
        title: Text(
          "Breakfast",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

        subtitle: Row(
          children: <Widget>[
            Icon(Icons.cloud, color: Colors.yellowAccent),
            Text(" XYZ", style: TextStyle(color: Colors.white))
          ],
        ),
        trailing:
            Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0));

class MenuPage extends StatefulWidget {
 
  @override
  MainPageState createState() => MainPageState();
  
}
class MainPageState extends State<MenuPage>{
  @override

   //final makeListTile ;
   //Card makeCard ;

  Widget build(BuildContext context)
    {   Size size = MediaQuery.of(context).size;
      return Scaffold(
       appBar: AppBar(
          title: Text('  List '
           ),
          centerTitle: true,
          backgroundColor: Colors.black,
           actions: <Widget>[
           IconButton(
            icon: Icon(Icons.list),
            onPressed: () {},
        )
      ],
           ), 
      bottomNavigationBar: 
        BottomAppBar(
          color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
           
            IconButton(
              icon: Icon(Icons.calendar_view_day, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_box, color: Colors.white),
              onPressed: () {},
        )


      ])),
     body : Stack(
         children : <Widget> [
      Center(
            child: new Image.asset(
              'lib/bg.png',
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),     
      Container( 
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return makeCard; }
         )
      

          ) ] )


     
   
   
      );


   

    }
}