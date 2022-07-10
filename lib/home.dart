import 'package:facebookdesign/sections/headerbuttonsection.dart';
import 'package:facebookdesign/sections/ststusSection.dart';
import 'package:facebookdesign/widgets/circlebutton.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,

          title: Text("facebook",style: TextStyle(color: Colors.blue, fontSize:30, fontWeight: FontWeight.w700 ),
          ),
          actions: [
            CircleButton(btnIcon: Icons.search, btnAction: () {
              print("Search Button Clicked");
            },),
            CircleButton(btnIcon: Icons.chat,btnAction: () {
              print("Messenger Button Clicked");
            },)
          ],
        ),
        body: ListView(
          children: [
            StstusSection(),
            Divider(thickness: 1),
            HeaderButtonSection(),
            Divider(thickness: 10),
          ],
        ),
      ),
    );
  }
}
