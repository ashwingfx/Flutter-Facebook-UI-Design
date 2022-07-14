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
  String postTitle;

  PostCards({required this.postCardAvatar,required this.postProfileName,
             required this.postPublishedAt,required this.postImage,required this.postTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHead(),

          Center(
            child: Text("${postTitle}"),
          ),

          Container(
            margin: EdgeInsets.only(top: 10,bottom: 10),
            child: Image.asset(postImage, fit: BoxFit.cover,),
          ),
          postFooterCard(),
        ],
      ),
    );
  }

//POSTCARD HEAD
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
          Text(postPublishedAt == null ? " ": postPublishedAt),
          SizedBox(width: 10),
          Icon(Icons.public,size: 13,)
        ],
      ),
      trailing: Icon(Icons.more_horiz),
    );
  }



//FOOTER SECTION

  Widget postFooterCard(){
    return Container(
      height: 50,
      color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 150,
            color: Colors.blue,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16),

              child: Icon(Icons.thumb_up),
                Text("20K")
                )
              ],
            ),
          ),
          Container(
            height: 50,
            width: 150,
            color: Colors.deepOrangeAccent,
          )
        ],
      )
    );
  }

}
