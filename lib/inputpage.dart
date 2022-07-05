import 'package:flutter/material.dart';
import 'calculation.dart';
import 'reusabel_card.dart';
import 'icon_data.dart';
import 'constent_terms.dart';
import 'roundicon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'result.dart';
enum gender{
  male,
  female,
}

class InputPage extends StatefulWidget {

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  gender? selectedgender;
  int height=180;
  int weight=60;
  int age=25;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text('BMI_CALCULATOR')),
        backgroundColor: Colors.black,
      ),
      backgroundColor: const Color(0xFF00070C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(

              children:  [
                Expanded(
                  child:  ReusableCard (
                    onPress: (){
                      setState(() {
                        selectedgender=gender.male;
                      });
                    },
                    colour: selectedgender== gender.male ? kactiveCardClour : kinactiveCardClour,
                    cardtitle: const Icondata(
                      icon: FontAwesomeIcons.mars ,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child:ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedgender=gender.female;
                      });
                    },
                    colour: selectedgender==gender.female?kactiveCardClour:kinactiveCardClour,
                    cardtitle: const Icondata(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour:  kinactiveCardClour,
              cardtitle: Column(
                children: [
                  const Text('HEIGHT',
                    style:ktextstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children:  [
                      Text(
                        height.toString(),
                        style: knumbertextstyle,
                      ),
                      const Text(' cm',
                        style: knumbertextstyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data:  SliderTheme.of(context).copyWith (
                      thumbShape:
                      const RoundSliderThumbShape(enabledThumbRadius: 13),
                      overlayShape:
                      const   RoundSliderOverlayShape(overlayRadius: 24),
                      overlayColor: const Color(0x1FC41E50),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      activeColor: Colors.white,
                      onChanged: (double newvalue){
                        setState(() {
                          height =newvalue.round();
                        });
                      },
                      thumbColor: const Color(0xFFC41E50),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children:  [
                Expanded(
                  child: ReusableCard(colour: kinactiveCardClour,
                    cardtitle:  Column(
                      children: [
                        const Text('WEIGHT'
                          ,style: ktextstyle,),
                        Text(weight.toString(),
                          style: knumbertextstyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Roundiconbutton(
                                icon: FontAwesomeIcons.plus,
                                ontap: (){
                                  setState(() {
                                    weight++;
                                  });
                                }
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Roundiconbutton(
                                icon: FontAwesomeIcons.minus,
                                ontap: (){
                                  setState(() {
                                    weight--;
                                  });
                                }
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width:10),
                Expanded(
                  child:  ReusableCard(colour: kinactiveCardClour,
                    cardtitle:  Column(
                      children: [
                        const Text('AGE'
                          ,style: ktextstyle,),
                        Text(age.toString(),
                          style: knumbertextstyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Roundiconbutton(
                                icon: FontAwesomeIcons.plus,
                                ontap: (){
                                  setState(() {
                                    age++;
                                  });
                                }
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Roundiconbutton(
                                icon: FontAwesomeIcons.minus,
                                ontap: (){
                                  setState(() {
                                    age--;
                                  });
                                }
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              result calc=result(height: height.toDouble(),weight: weight.toDouble());
              Navigator.push(context, MaterialPageRoute(builder: (context) => Resultpage(
                bmi: calc.bmi(),
                solution: calc.solution(),
                interpretation: calc.interpretation(),
              )
              ));
            },
            child: Container(

              child: Center(child: Text('CALCULATE',
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


    );
  }
}
