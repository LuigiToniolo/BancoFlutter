import 'package:flutter/material.dart';

class OperationCard extends StatelessWidget {
  final String operation;
  final String selecteIcon;
  final String unselectedIcon;
  final String isSelected;
  _HomeScreenState context;

  OperationCard(
      {required this.operation, required this.selecteIcon, required this.unselectedIcon, required this.isSelected})

  @override
  _OperationCardState createState() => _OperationCardState();
}

class _OperationCardState extends State<OperationCard> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      width: 123,
      height: 123,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.green,
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(8.0, 8.0),
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          color: widget.isSelected ? Colors.blue : Colors.white
      ),
      child: Column(
        children: [
          Icon(Icons.account_tree),
          SizedBox(height: 9,),
          Text(widget.operation, textAlign: Alignment.center,
            style: TextStyle(
                color: widget.isSelected ? Colors.blue : Colors.black),
          )
        ],
      ),
    );
  }
}
