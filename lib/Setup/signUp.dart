import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exam/Setup/Login.dart';
import 'package:flutter_exam/Setup/home.dart';
import 'package:fluttertoast/fluttertoast.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password, _name;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sing Up',
        style: TextStyle(
          fontFamily: 'Asul-Bold',
        ),),
        centerTitle: true
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0.0),
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/signup.jpg'),
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
                         _name = value.trim();
                       });
                     },
                     keyboardType: TextInputType.emailAddress,
                     decoration: InputDecoration(
                         labelText: 'Name'
                     ),
                   ),
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        _email = value.trim();
                      });
                    },
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
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue ,

                      ),
                      onPressed: () => _registerFb(_email,_password,_name),
                      child: Text('Register'),

                  ),
                   SizedBox(
                   height: 20.0,
                  ),
                   // ignore: deprecated_member_use


               ],
             ),
           ),
         ),
            ]
       ),
        )
      )
    );
  }
  _registerFb(String _email, String _password, String _name) async{
    try{
      await firebaseAuth.createUserWithEmailAndPassword(email: _email, password: _password
      );
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginIn()));
    } on FirebaseAuthException catch (error){
      Fluttertoast.showToast(msg: error.message, gravity: ToastGravity.TOP);
    }
  }

}
