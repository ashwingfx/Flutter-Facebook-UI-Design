import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData btnIcon;
  final void Function() btnAction;
  CircleButton({required this.btnIcon, required this.btnAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(5),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[400]),
      child: IconButton(onPressed: btnAction,
          icon: Icon(btnIcon,color: Colors.black)),
    );
  }
}
