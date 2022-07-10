import 'package:facebookdesign/assets.dart';
import 'package:facebookdesign/widgets/bluetick.dart';
import 'package:flutter/material.dart';

import 'avatar.dart';
class PostCards extends StatelessWidget {
  //const PostCards({Key? key}) : super(key: key);

  String postCardAvatar;
  String postProfileName;
  String postPublishedAt;
  String postImage;

  PostCards({required this.postCardAvatar,required this.postProfileName,required this.postPublishedAt,required this.postImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHead(),

          Center(
            child: Text("Happy Diwali!"),
          ),

          Container(
            margin: EdgeInsets.only(top: 10,bottom: 10),
            child: Image.asset(postImage, fit: BoxFit.cover,),
          )

        ],
      ),
    );
  }


  Widget postCardHead(){
    return ListTile(
      leading:Avatar(displayImage:postCardAvatar),
      title: Row(
        children: [
          Text("${postProfileName}"),
          BlueTick(),
        ],
      ),
      subtitle: Row(
        children: [
          Text("${postPublishedAt}"),
          SizedBox(width: 10),
          Icon(Icons.public,size: 13,)
        ],
      ),
      trailing: Icon(Icons.more_horiz),
    );
  }
}
