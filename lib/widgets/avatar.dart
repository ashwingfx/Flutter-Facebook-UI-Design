import 'package:flutter/material.dart';
class Avatar extends StatelessWidget {
  //const Avatar({required this.displayImage, Key? key}) : super(key: key);

  Avatar({required this.displayImage,this.statusIndicator=false,this.displayBorder=false});
  final String displayImage;
  final bool statusIndicator;
  final bool displayBorder;

  @override
  Widget build(BuildContext context) {
    return   Stack(
      children:[
        Container(
          margin: EdgeInsets.only(left:4,right: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder == true ?  Border.all(color: Colors.blue,width: 2): Border(),
          ),
          child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(displayImage, height: 50,width: 50, fit: BoxFit.cover),
      ),
        ),
       statusIndicator == true ? Positioned(
          bottom: 1,
          right:2,
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
