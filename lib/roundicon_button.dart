import 'package:flutter/material.dart';
class Roundiconbutton extends StatelessWidget {
  Roundiconbutton({this.icon,this.ontap});
  final IconData? icon;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: ontap,
      elevation: 0,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),

    );
  }
}