import 'package:flutter/material.dart';

class MoneyWidget extends StatelessWidget  {
  final Color color;
  final Icon icon;
  final String symbol;
  final String perc;
  final Color textcolor;

  const MoneyWidget({
    Key, key,
    required this.color, required this.icon, required this.perc, required this.textcolor, required this.symbol
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      margin: EdgeInsets.symmetric(vertical: 6),
      height: 75,
      decoration: BoxDecoration(
          color: Colors.purple[200],
          borderRadius: BorderRadius.circular(18)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: this.color,
                child: this.icon,
              ),
              Text('$symbol'),
            ],
          ),
          Container(
            width: 1,
            color: Colors.black54,
          ),
          Text('Hoje', style: TextStyle(color: Colors.black54)),
          Container(
            width: 1,
            color: Colors.black54,
          ),
          Row(
            children: [
              Icon(Icons.arrow_drop_up, color: Colors.green, size: 35,),
              Text('$perc %', style: TextStyle(color: this.textcolor)),
            ],
          )
        ],
      ),
    );
  }
}