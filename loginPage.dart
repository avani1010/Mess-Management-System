import 'package:flutter/material.dart';
import 'package:project1/MenuPage.dart';
import 'package:project1/auth.dart';


Future navigateToNextPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => MenuPage())); 
  
  }

class Login extends StatefulWidget {
 
  @override
  LoginPageState createState() => LoginPageState();
  
}
class LoginPageState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final AuthService _auth= AuthService() ;
  String _password;
  String _email ;  
  //String _error ;
  
  @override
  
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
    /* appBar: AppBar(
          title: Text('  Login '
           ),
          centerTitle: true,
          backgroundColor: Colors.blue

           ), */
      
    body:
    Stack(
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
    padding: EdgeInsets.all(20.0),
    child:  Form(          
          key: _formKey,
          child :
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
            Text( 'A N N A P O O R N A', style : TextStyle(debugLabel: 'whiteMountainView body2', 
            fontFamily: 'Roboto',fontSize: 20, color: Colors.white )
           ),
         
        TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(labelText: "Email" ,  
                                        hintText: "Enter email ID",
                                        labelStyle: TextStyle(color: Colors.blueAccent),
                                        hintStyle:TextStyle( color : Colors.blueGrey), 
                                        focusColor: Colors.white,
                                        suffixIcon: Icon(Icons.people), 
                                        
                                         
                                       //fillColor:
                                       
                                        enabledBorder: new OutlineInputBorder(borderRadius: new BorderRadius.circular(25.0), borderSide: const BorderSide(color: Colors.blueGrey)), 
                                        focusedBorder: OutlineInputBorder( borderRadius: new BorderRadius.circular(25.0),
                                                                        borderSide: new BorderSide(color: Colors.lightGreen)),
                                                                        
            )),
             SizedBox(height: 20.0) ,
        TextFormField(
           
           onSaved: (value) => _password = value,
            obscureText: true  ,
            
            cursorColor: Colors.lightBlue,
            style: TextStyle(color: Colors.white),
            
            decoration: InputDecoration(labelText: "Password", labelStyle: TextStyle( color : Colors.blueAccent),
                                       fillColor: Colors.white10, 
                                       suffixIcon: Icon(Icons.vpn_key),
                                       suffixStyle: TextStyle(color: Colors.blueGrey),
                                        enabledBorder: new OutlineInputBorder(borderRadius: new BorderRadius.circular(25.0), borderSide: const BorderSide(color: Colors.blueGrey)), 
                                       focusedBorder : new OutlineInputBorder( borderRadius: new BorderRadius.circular(25.0),
                                                                        borderSide: new BorderSide(color: Colors.lightGreen), 
                         ) 
                          )),
             SizedBox(height: 20.0),
        RaisedButton(child: Text("LOGIN"), onPressed: () async{

         final form = _formKey.currentState; 
        //form.save();

    // Validate will return true if is valid, or false if invalid.
    if (form.validate()) {
      print("$_email $_password");
      dynamic result= await _auth.loginWithEmail(_email, _password);
      if(result==null){ setState(() => 'User not found.(please recheck your credentials)') ;
        }
  
      navigateToNextPage(context) ; 
    }  //async

        }//async
        ),
      ],
    ),
  ),
      
     )])) ;
  }
}
