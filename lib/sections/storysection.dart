import 'package:facebookdesign/assets.dart';
import 'package:facebookdesign/widgets/storycard.dart';
import 'package:flutter/material.dart';
class StorySection extends StatelessWidget {
  const StorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 250,
      //color: Colors.green,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [

         StoryCard(storyImage: marakkar,storyText:"Add to story", storyStatusImage:mlal ,storyStatus:true, storyDisplayBorder: true,),
          StoryCard(storyImage: bheeshmam,storyText:"Mamootty", storyStatusImage: mammu,storyDisplayBorder: true,),
          StoryCard(storyImage: naradan,storyText: "Tovino",storyStatusImage: tovi,storyDisplayBorder: true,),
          StoryCard(storyImage: dude,storyText: "Vinayakan",storyStatusImage: vinayak,storyDisplayBorder: true,),
          StoryCard(storyImage: brodad,storyText: "Prithviraj",storyStatusImage: raj,storyDisplayBorder: true,),
          StoryCard(storyImage: bheeshmam,storyText: "Mamootty",storyStatusImage: mammu,storyDisplayBorder: true,),
          StoryCard(storyImage: dude,storyText: "Vinayakamn",storyStatusImage: vinayak,storyDisplayBorder:true ,),

        ],
      ),

    );
  }
}
