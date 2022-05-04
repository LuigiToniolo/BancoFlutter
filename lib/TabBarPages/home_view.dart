import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {

  final perfil = 'images/foto-perfil.jpeg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(24.0),
          child: ListView(
            children: [
              SizedBox(height: 25),
              Stack(
                children: [
                  Transform(
                    alignment: FractionalOffset.center,
                    transform: Matrix4.identity()..rotateZ(-15 * 3.1415927 / 180),
                      child: Container(
                        height: 210,
                        decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(38)
                    ),
                  ),
                ),
                  Container(
                    height: 210,
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(38),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //MasterCardIcon
                        Container(
                          width: 30,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.yellow.withOpacity(0.75),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.red.withOpacity(0.75),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 10),
                          Text('Luigi Toniolo', style: TextStyle(color: Colors.grey),),
                          Text('MasterCard', style: TextStyle(fontSize: 18, color: Colors.black54),),
                        SizedBox(height: 15),
                          Text('**** **** **** **** 69', style: TextStyle(fontSize: 22),),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text('Exp date', style: TextStyle(color: Colors.grey)),
                                SizedBox(height: 3),
                                Text('22/05', style: TextStyle(color: Colors.black54),)
                              ],
                            ),
                            Column(
                              children: [
                                Text('Cvv2 num', style: TextStyle(color: Colors.grey)),
                                SizedBox(height: 3),
                                Text('0696', style: TextStyle(color: Colors.black54),)
                              ],
                            ),
                          ],
                        )

                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 35,),
              Text('Send Money', style: TextStyle(fontSize: 22, color: Colors.black54)),
              SizedBox(height: 10),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(25)
                        ),
                        child: Icon(Icons.add),
                      ),
                      SizedBox(height: 5),
                      Text('Add',style: TextStyle(color: Colors.black54),)
                    ],
                  ),
                  UserAvatar()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  class UserAvatar extends StatelessWidget {
    final String name;
    final int id;

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
    CircleAvatar(
    radius: 25,
    backgroundImage: AssetImage('images/perfil_flavia.jpeg'),
    ),
    SizedBox(height: 5),
    Text('Flávia',style: TextStyle(color: Colors.black54),)
    ],
    );
  }
  }
}

