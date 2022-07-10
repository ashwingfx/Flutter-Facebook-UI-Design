import 'package:facebookdesign/assets.dart';
import 'package:facebookdesign/widgets/avatar.dart';
import 'package:flutter/material.dart';
class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      
      child: ListView(
        scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(10),
        children:[
          createRoomButton(), // Function Call Room Button
          Avatar(displayImage: mammu,statusIndicator: true,),
          Avatar(displayImage: tovi,statusIndicator: true,),
          Avatar(displayImage: vinayak,statusIndicator: true,),
          Avatar(displayImage: raj,statusIndicator: true,),
          Avatar(displayImage: mlal,statusIndicator: true,),
          Avatar(displayImage: mammu,statusIndicator: true,),
          Avatar(displayImage: tovi,statusIndicator: true,),
          Avatar(displayImage: vinayak,statusIndicator: true,),
        ]
      ),
    );
  }
  Widget createRoomButton(){
    return Container(
      margin: EdgeInsets.only(right: 5),
      child: OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
              shape: StadiumBorder(),
              side: BorderSide(
              width: 2,
              color: Colors.blue.shade100,
              )
          ),
          onPressed:(){},
          icon:Icon(Icons.video_call,color: Colors.purple,),
          label:Text("Create\n Room",style: TextStyle(color: Colors.blue),)),
    );
  }
}
