import 'package:flutter/material.dart';
import 'package:project1/loginPage.dart';

Future navigateToNextPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Login())); 
  //Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPageState()));
  }
class HomePage extends StatelessWidget {
   @override


    Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size ;
       
       return Scaffold(
         
        //backgroundColor: Colors.indigo,
        
         
        body : 
        Stack (
          children : <Widget> [
        
          Center(
                  
            child: new Image.asset(
              'lib/bg.png',
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),
          Center(     
          
           child : new Column(
             
             
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children : <Widget>[
        

                new Text(" Annapoorna MESS ",style: new TextStyle(color: Colors.blue, fontSize: 30.0, fontWeight: FontWeight.w500, fontFamily: "Roboto")), // , fontSize: 50.0,
                          /*fontWeight: FontWeight.w10 */
               
                RaisedButton(
              
              textColor: Colors.white,
              color: Colors.blueAccent,
               
              child: new Text("LOGIN",textAlign: TextAlign.end, style: new TextStyle(color: Colors.yellowAccent, fontSize: 20.0, fontWeight: FontWeight.w500 )),
              onPressed: () {
                       navigateToNextPage(context) ;      },
               
                ),
                
                
               
                ]
                

           ),
          // new Text("LOGIN",style: new TextStyle(color: Colors.yellowAccent, fontSize: 20.0, fontWeight: FontWeight.w500))
         
         )
       ]));    
    

     /* Future navigateToLoginPage(context) async {
       Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    }*/
    
}

    
}

    