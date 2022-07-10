import 'package:facebookdesign/assets.dart';
import 'package:facebookdesign/widgets/avatar.dart';
import 'package:facebookdesign/widgets/circlebutton.dart';
import 'package:flutter/material.dart';
class StoryCard extends StatelessWidget {
  //const StoryCard({Key? key}) : super(key: key);

  String storyImage;
  String storyText;
  bool storyStatus;
  bool storyDisplayBorder;

  String storyStatusImage;

  StoryCard({
    this.storyDisplayBorder=false,
    this.storyStatus=false,
    required this.storyStatusImage,
    required this.storyImage,
    required this.storyText
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4,right: 4),
      width: 150,
      //color: Colors.lightBlue,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(storyImage),
          fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          storyStatus==true ? Positioned(
            child: CircleButton(
                btnIcon:Icons.add,
                btnAction: () {
                }),
          ):Avatar(displayImage:storyStatusImage,statusIndicator: false,displayBorder: true,),
          Positioned(
              bottom:10,
              left: 5,
              child: Text(storyText !=null ? storyText : "N/A",
                style: TextStyle(
                    color: Colors.white,fontWeight: FontWeight.w600),
              ),
          ),


        ],
      ),
    );
  }
}
