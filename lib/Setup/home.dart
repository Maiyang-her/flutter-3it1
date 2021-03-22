 import 'package:flutter/material.dart';
import 'package:flutter_exam/Setup/Login.dart';
import 'package:flutter_exam/Setup/details.dart';
import 'package:flutter_exam/Setup/menu.dart';

import 'signUp.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page',
        style: TextStyle(
          fontFamily: 'Asul-Bold',
          fontWeight: FontWeight.bold,

        ),),
        centerTitle: true,

        actions: [
          IconButton(
              icon: Icon(Icons.arrow_back_ios_sharp),
              onPressed: () {
                _save('out');
                Navigator.maybeOf(context).push(
                    MaterialPageRoute(builder: (BuildContext context) => new  LoginPage(),
                    )
                );

              }
          )
        ],


      ),
      drawer: Menu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is Home Page',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Asul-Bold',
              ),
            ),

            // ignore: deprecated_member_use
            SizedBox(height: 10.0,),
            ElevatedButton(
              child: Text('go to details',
              style: TextStyle(
                fontFamily: 'Asul-Bold',
              ),),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Details()),
                );
              },
            ),
          ],
        ),

      ),
    );
  }

  void _save(String s) {}

}




