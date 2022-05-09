import 'package:flutter/material.dart';

import '../models/operation_model.dart';
import '../widgets/MoneyWidget.dart';
import '../widgets/UserAvatar.dart';

class HomePageView extends StatelessWidget {

  final perfil = 'images/foto-perfil.jpeg';

  //current selected
  int current = 0;

  //Handle indicator

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple[50],
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(12.0),
            child: ListView(
              children: [
                SizedBox(height: 25),
                Padding(
                  padding: EdgeInsets.only(left:16, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Bom dia,', style: TextStyle(fontSize: 16, color: Colors.black),),
                      Text('Luigi Toniolo', style: TextStyle(fontSize: 22, color: Colors.black54),),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Stack(
                  children: [
                    Transform(
                      alignment: FractionalOffset.center,
                      transform: Matrix4.identity()
                        ..rotateZ(-15 * 3.1415927 / 180),
                      child: Container(
                        height: 210,
                        decoration: BoxDecoration(
                            color: Colors.purple[300]?.withOpacity(0.25),
                            borderRadius: BorderRadius.circular(38)
                        ),
                      ),
                    ),
                    Container(
                      height: 210,
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.purple[300]?.withOpacity(1.00),
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
                                    backgroundColor: Colors.yellow.withOpacity(
                                        0.75),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: CircleAvatar(
                                    radius: 10,
                                    backgroundColor: Colors.red.withOpacity(
                                        0.75),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 10),
                          Text('Luigi Toniolo', style: TextStyle(color: Colors
                              .white),),
                          Text('MasterCard',
                            style: TextStyle(fontSize: 18, color: Colors
                                .black54),),
                          SizedBox(height: 15),
                          Text('**** **** **** **** 69',
                            style: TextStyle(fontSize: 22),),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text('Exp date',
                                      style: TextStyle(color: Colors.white)),
                                  SizedBox(height: 3),
                                  Text('22/05',
                                    style: TextStyle(color: Colors.black),)
                                ],
                              ),
                              Column(
                                children: [
                                  Text('Cvv2 num',
                                      style: TextStyle(color: Colors.white)),
                                  SizedBox(height: 3),
                                  Text('0696',
                                    style: TextStyle(color: Colors.black),)
                                ],
                              ),
                            ],
                          )

                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 42,),
                Text('Enviar dinheiro',
                    style: TextStyle(fontSize: 22, color: Colors.black54)),
                SizedBox(height: 15),

                //Users Avatar

                Container(
                  height: 75,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
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
                          Text('Add', style: TextStyle(color: Colors.black54),)
                        ],
                      ),
                      SizedBox(width: 8),
                      UserAvatar(id: 1, name: 'Flávia',),
                      SizedBox(width: 8),
                      UserAvatar(id: 2, name: 'De mel',),
                      SizedBox(width: 8),
                      UserAvatar(id: 3, name: 'Gata',),
                      SizedBox(width: 8),
                      UserAvatar(id: 4, name: 'Gatinha',),
                      SizedBox(width: 8),
                      UserAvatar(id: 5, name: 'Mara',),
                      SizedBox(width: 8),
                      UserAvatar(id: 6, name: 'Anjo',),
                      SizedBox(width: 8),
                      UserAvatar(id: 7, name: 'Anjinho',),
                    ],
                  ),
                ),

                SizedBox(height: 15),

                Padding(
                  padding: EdgeInsets.only(bottom: 13, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Operações', style: TextStyle(fontSize: 22, color: Colors.black54),),
                      Row(

                        children:
                        map<Widget>(
                          datas,
                                (index, selected) {
                            return Container(
                              alignment: Alignment.centerLeft,
                              height: 9,
                              width: 9,
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: current==index
                                    ? Colors.purple[300]?.withOpacity(1.00)
                                  : Colors.purple[300]?.withOpacity(0.25)
                              ),
                            );
                        },
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: 123,
                  child: ListView.builder(
                    itemCount: datas.length,
                      padding: EdgeInsets.only(left: 16),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                      return OperationCard(selecteIcon: '',),
                  }
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Cotação do Dia',
                      style: TextStyle(fontSize: 22, color: Colors.black54),),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(18)
                      ),
                      child: DropdownButton<int>(
                        value: 0,
                        underline: Container(),
                        items: [
                          DropdownMenuItem(value: 0, child: Text('Hoje'))
                        ],
                        onChanged: (val) {},
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                MoneyWidget(
                  color: Colors.yellow,
                  symbol: 'bitcoin',
                  icon: Icon(Icons.currency_bitcoin, size: 28, color: Colors.black,),
                  perc: '125.0',
                  textcolor: Colors.greenAccent,
                ),
                SizedBox(height: 10),
                MoneyWidget(
                  color: Colors.greenAccent,
                  symbol: 'pound',
                  icon: Icon(Icons.currency_pound, size: 28, color: Colors.black,),
                  perc: '52.6',
                  textcolor: Colors.greenAccent,
                ),
                SizedBox(height: 10),
                MoneyWidget(
                  color: Colors.orange,
                  symbol: 'franc',
                  icon: Icon(Icons.currency_franc, size: 28, color: Colors.black,),
                  perc: '65.6',
                  textcolor: Colors.greenAccent,
                ),
                SizedBox(height: 10),

              ],
            ),
          ),
        ),
      ),
    );
  }
}



