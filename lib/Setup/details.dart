import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail of Products',
          style: TextStyle(
            fontFamily: 'Asul-Bold',),),
        centerTitle: true,
        backgroundColor: Colors.white12,
      ),
      body: GridView.count(
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
          crossAxisCount: 2,
          children: [

            //picture 1

            Container(
              child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/chanel2.jpg',
                    height: 110.0,
                      width: 120.0,
                      fit: BoxFit.cover,
                    ),

                    Text(
                      'Chanel Pre-Owner',
                        style: TextStyle(
                          fontFamily: 'Asul-Bold',)
                    ),Text(
                      "\$300",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent
                      ),
                    ),

                  ],
                ),
              ),
            ),

            //picture 2

            Container(
              child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/chanel1.jpg',
                      height: 110.0,
                      width: 120.0,
                      fit: BoxFit.cover,
                    ),

                    Text(
                        'Chanel Classic Flap',
                        style: TextStyle(
                          fontFamily: 'Asul-Bold',)
                    ),Text(
                      "\$400",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent
                      ),
                    ),

                  ],
                ),
              ),
            ),

            //picture 3

            Container(
              child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/chanel10.jpg',
                      height: 90.0,
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                        'Chanel Hand Bag',
                        style: TextStyle(
                          fontFamily: 'Asul-Bold',)
                    ),Text(
                      "\$400",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent
                      ),
                    ),

                  ],
                ),
              ),
            ),


            //picture 4

            Container(
              child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/chanel4.jpg',
                      height: 110.0,
                      width: 120.0,
                      fit: BoxFit.cover,
                    ),
                    Text(
                        'Chanel Chevron Quited',
                        style: TextStyle(
                          fontFamily: 'Asul-Bold',)
                    ),Text(
                      "\$400",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent
                      ),
                    ),

                  ],
                ),
              ),
            ),


            //picture 5

            Container(
              child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/chanel3.jpg',
                      height: 110.0,
                      width: 120.0,
                      fit: BoxFit.cover,
                    ),
                    Text(
                        'Chanel Women Purses',
                        style: TextStyle(
                          fontFamily: 'Asul-Bold',)
                    ),Text(
                      "\$400",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent
                      ),
                    ),

                  ],
                ),
              ),
            ),

            //picture 6

            Container(
              child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/chanel5.jpg',
                      height: 100.0,
                      width: 110.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                        'Chanel Mini Coco',
                        style: TextStyle(
                          fontFamily: 'Asul-Bold',)
                    ),Text(
                      "\$400",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent
                      ),
                    ),

                  ],
                ),
              ),
            ),


            //picture 7

            Container(
              child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/chanel7.jpg',
                      height: 110.0,
                      width: 120.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                        'Chanel Accordion Flap',
                        style: TextStyle(
                          fontFamily: 'Asul-Bold',)
                    ),Text(
                      "\$400",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent
                      ),
                    ),

                  ],
                ),
              ),
            ),

            //picture 8

            Container(
              child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/chanel8.jpg',
                      height: 110.0,
                      width: 120.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                        'Chanel Price Increase',
                        style: TextStyle(
                          fontFamily: 'Asul-Bold',)
                    ),Text(
                      "\$400",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent
                      ),
                    ),

                  ],
                ),
              ),
            ),

            //picture 9

            Container(
              child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/chanel9.jpg',
                      height: 110.0,
                      width: 120.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                        'Chanel Best Luxury',
                        style: TextStyle(
                          fontFamily: 'Asul-Bold',)
                    ),Text(
                      "\$400",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent
                      ),
                    ),

                  ],
                ),
              ),
            ),

            //picture 10

            Container(
              child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/chanel6.jpg',
                      height: 110.0,
                      width: 120.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                        'Chanel Wikipedia',
                        style: TextStyle(
                          fontFamily: 'Asul-Bold',)
                    ),Text(
                      "\$400",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent
                      ),
                    ),

                  ],
                ),
              ),
            ),

            //picture 11

            Container(
              child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/chanel11.jpg',
                      height: 110.0,
                      width: 120.0,
                      fit: BoxFit.cover,
                    ),
                    Text(
                        'Chanel Fresh New',
                      style: TextStyle(
                        fontFamily: 'Asul-Bold',)
                    ),Text(
                      "\$400",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent
                      ),
                    ),

                  ],
                ),
              ),
            ),

            //picture 12

            Container(
              child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/chanel12.jpg',
                      height: 110.0,
                      width: 120.0,
                      fit: BoxFit.cover,
                    ),
                    Text(
                        'Chanel Pearl Crush',
                      style: TextStyle(
                        fontFamily: 'Asul-Bold',
                      ),
                    ),Text(
                      "\$400",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,

                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
    )

    );
  }
}
