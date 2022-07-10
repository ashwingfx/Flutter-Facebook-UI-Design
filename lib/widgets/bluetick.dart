import 'package:flutter/material.dart';
class BlueTick extends StatelessWidget {
  const BlueTick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 13,
      width: 13,
      margin: EdgeInsets.only(top:2,left: 5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
      child: Icon(Icons.check,color: Colors.white,size: 10,),
    );
  }
}
