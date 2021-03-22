import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exam/Setup/home.dart';
import 'package:flutter_exam/Setup/signUp.dart';
import 'package:fluttertoast/fluttertoast.dart';
class LoginIn extends StatefulWidget {
  @override
  _LoginInState createState() => _LoginInState();
}

class _LoginInState extends State<LoginIn> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Login',
        style: TextStyle(
          fontFamily: 'Asul-Bold',
        ),),
        centerTitle: true,

      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Center(
             child: CircleAvatar(
               backgroundImage: AssetImage('assets/images/log in.jpg'),
                 radius: 60.0,
           ),

          ),
           Container(
             padding: EdgeInsets.all(10.0),
             child: Form(
               key: _formKey,
                 child: Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,

                 children: [

                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        _email = value.trim();
                      });
                    },
                    keyboardType: TextInputType.emailAddress,

                decoration: InputDecoration(
                    labelText: 'Email'
                  ),
                ),

                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        _password = value.trim();
                      });
                    },
                    obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password'
                 ),
                ),
                  SizedBox(
                height: 20.0,
                 ),
                 // ignore: deprecated_member_use
                 // ignore: deprecated_member_use
                 RaisedButton(
                   color: Colors.deepPurpleAccent ,
                   onPressed: () => _signupFb(_email,_password),

                    child: Text('Login',
                    style: TextStyle(
                      color: Colors.white
                    ),),

                    ),
                   SizedBox(
                   height: 1.0,),
                    FlatButton(
                      child: Text('Create a new account',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Asul-Bold',

                      ),),
                    ),
                   SizedBox(
                     height: 1.0,
                   ),
                   RaisedButton(
                     color: Colors.deepPurpleAccent ,
                     onPressed: () {
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => LoginPage()),
                       );
                     },

                     child: Text('Sign Up',style: TextStyle(color: Colors.white),),

                   ),

            ],
          ),
               )
        ),

            ]
        )
    )
      )
    );
  }
  _signupFb(String _email, String _password) async{
    try{
      await firebaseAuth.signInWithEmailAndPassword(email: _email, password: _password);
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Home()));
    } on FirebaseAuthException catch (error){
      Fluttertoast.showToast(msg: error.message, gravity: ToastGravity.TOP);
    }
  }
}
