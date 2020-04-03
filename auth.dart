import 'package:firebase_auth/firebase_auth.dart';
import 'package:inspark/user.dart';

class AuthService
 {  String link ; 
    final FirebaseAuth _auth = FirebaseAuth.instance ;
    User userfromFirebase(FirebaseUser user)
    {
      return user!=null ? User(uid : user.uid) : null ;

    }
    Stream<User> get user {
      return _auth.onAuthStateChanged.map(userfromFirebase);
    }
    Future loginWithEmail(String _email, String _password) async {
      try {
        AuthResult result= await _auth.signInWithEmailAndPassword(email: _email, password: _password);
        FirebaseUser user = result.user ;
        return userfromFirebase(user) ;

      }catch(e) { print(e.toString()) ;
        return null ;
      }
    }
    

 }