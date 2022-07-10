import 'package:facebookdesign/assets.dart';
import 'package:facebookdesign/widgets/avatar.dart';
import 'package:flutter/material.dart';
class StstusSection extends StatelessWidget {
  const StstusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(displayImage: mlal), //Refactor
      /*CircleAvatar(
        backgroundImage: AssetImage(mlal),
        radius: 30,
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(mlal, height: 60,width: 60, fit: BoxFit.cover),
      ),*/
      title: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: "What's on your mind?",
          hintStyle: TextStyle(color: Colors.black),
          errorBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none
        ),
      ),
    );
  }
}
