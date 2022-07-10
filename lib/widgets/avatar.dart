import 'package:flutter/material.dart';
class Avatar extends StatelessWidget {
  //const Avatar({required this.displayImage, Key? key}) : super(key: key);

  Avatar({required this.displayImage,this.statusIndicator=false});
  final String displayImage;
  final bool statusIndicator;

  @override
  Widget build(BuildContext context) {
    return   Stack(
      children:[
        Container(
          margin: EdgeInsets.only(left:4,right: 4),
          child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(displayImage, height: 60,width: 60, fit: BoxFit.cover),
      ),
        ),
       statusIndicator == true ? Positioned(
          bottom: 0,
          right:5,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              shape:BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),
        ): SizedBox(),
      ]
    );
  }
}
