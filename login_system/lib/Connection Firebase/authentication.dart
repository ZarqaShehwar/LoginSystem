import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthentication{
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<String>Signup(String username,String email,String password,String confirm)async{
    String res = "Error can be occur";
    if(username.isEmpty||email.isEmpty||password.isEmpty||confirm.isEmpty){
       res =  "Please enter all field";
    }
    else {
    try{
      
      UserCredential cred=await auth.createUserWithEmailAndPassword(email: email, password: password);
      await firestore.collection("user").doc(cred.user!.uid).set({
        "Name":"${username}",
        "Email":"${email}",
        "Password":"${password}",
        "Confirm Password":"${confirm}"

      });
    res = "Success";
    }
    catch(err){
        res = err.toString();
    }
    }
    return res ;
    
  }
  Future<String>Login(String email,String password)async{
    String res = "Error can be occur";
    if(email.isEmpty||password.isEmpty){
       res =  "Please enter all field";
    }
    else{
    try{
    await auth.signInWithEmailAndPassword(email: email, password: password);
     res = "Success";  }
    catch(err){
       res = err.toString();
    }
    }
    return res;
}
}