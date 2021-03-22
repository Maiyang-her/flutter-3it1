import 'package:flutter/material.dart';

import 'details.dart';
class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(

                children: [
                  Container(
                    width: 100,
                    height: 100,
                      margin: EdgeInsets.only(top: 30.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/person.jpg'),
                        radius: 5.0,
                      ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('KMK Shopping Store',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Asul-Bold',
                  ),),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('KMKShop123@gmail.com',
                    style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                        fontFamily: 'Asul-Bold',
                    ),)

                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text(
              'Chanel Brand',
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Asul-Bold',
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Details()),
              );
            },
          ),
          ListTile(
              leading: Icon(Icons.shopping_basket_sharp),
              title: Text(
                'Valentino Brand',
                style: TextStyle(
                    fontSize: 18.0,
                  fontFamily: 'Asul-Bold',
                ),
              ),
              onTap: null
          ),
          ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text(
                'Loui Brand',
                style: TextStyle(
                    fontSize: 18.0,
                  fontFamily: 'Asul-Bold',
                ),
              ),
              onTap: null
          ),
        ],
      ),
    );
  }
}
