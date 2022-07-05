import 'package:flutter/material.dart';
import 'constent_terms.dart';
class Icondata extends StatelessWidget {
  // ignore: use_key_in_widget_constructors

  const Icondata({ this.icon,this.label});
  final IconData? icon;
  final String ? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 80,
          color: Colors.white ,


        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          label!,
          style: klebeltextstyle,
        ),
      ],
    );
  }
}