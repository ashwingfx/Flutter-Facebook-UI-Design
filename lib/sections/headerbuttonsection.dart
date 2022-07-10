import 'package:flutter/material.dart';
class HeaderButtonSection extends StatelessWidget {
  const HeaderButtonSection({Key? key}) : super(key: key);


  Widget headderButtons({
    required void Function() btnAction,
    required IconData btnIcon,
    required Color iconColor,
    required String iconButtonText})

  {
    return TextButton.icon(
        onPressed:btnAction,
        icon: Icon(btnIcon,
        color: iconColor),
        label: Text(iconButtonText));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headderButtons(
              btnAction: () {
                print("Video Call Button CLicked!!!");
              },
              btnIcon:Icons.video_call, iconColor: Colors.red, iconButtonText:"Live"),
          VerticalDivider(
            thickness: 1,
          ),
          headderButtons(btnAction: (){
            print("Photos Button CLicked!!!");
          },
              btnIcon: Icons.photo,
              iconColor: Colors.green,
              iconButtonText:"Photos"),
          VerticalDivider(
            thickness: 1,
          ),
          headderButtons(btnAction: (){
            print("Room Button CLicked!!!");
          },
              btnIcon: Icons.room_service_outlined,
              iconColor: Colors.purple,
              iconButtonText:"Rooms"),

        ],
      ),
    );
  }
}
