import 'package:flutter/material.dart';
import 'constent_terms.dart';


class ReusableCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ReusableCard({ this.colour ,  this.cardtitle , this.onPress});
  final Color? colour;
  final Widget? cardtitle;
 final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,

      child: Container(
        child: cardtitle,
        margin: kspace,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),

      ),
    );
  }

  void setState(Null Function() param0) {}
}
