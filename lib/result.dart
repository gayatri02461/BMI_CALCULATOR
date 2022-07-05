import 'package:bmi_calculator/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constent_terms.dart';
import 'roundicon_button.dart';
import 'calculation.dart';
import 'inputpage.dart';

class Resultpage   extends StatelessWidget {
  Resultpage({this.bmi,this.interpretation,this.solution});
  final String? bmi;
  final String? interpretation;
  final String? solution;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF00070C),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('RESULT',
              style: ktextstyle,
            ),
          ),
          backgroundColor: Color(0xFF00070C) ,

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                    interpretation!,
                  style: kresulttextstyle,

                ),
                SizedBox(
                  width: 1002,
                ),
                Text(
                  bmi!,
                  style: kresulttextstyle,
                ),
                SizedBox(
                  width: 50,
              ),

                Text(
                  solution!,
                  style: ktextstyle,
                ),
              ],
            ),
            GestureDetector(
              onTap: (){

                Navigator.pop(context, MaterialPageRoute(builder: (context) => InputPage()
                ));
              },
              child: Container(

                child: Center(child: Text('CALCULATE AGAIN',
                  style: kbottomcontainertextstyle,)),
                margin: const EdgeInsets.only(top: 10),
                decoration: const BoxDecoration(
                  color: kbottomcontainercolour,
                ),
                height: 50,
                width: double.infinity,
              ),
            ),


          ],
        ),
      ),
    );
  }
}




