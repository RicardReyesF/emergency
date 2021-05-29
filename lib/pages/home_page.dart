import 'package:animate_do/animate_do.dart';
import 'package:emergenci/widgets/button_widget.dart';
import 'package:emergenci/widgets/headers_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

  class ItemBoton {

  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;

  ItemBoton( this.icon, this.texto, this.color1, this.color2 );
}


class HomePage extends StatelessWidget {

 



  @override
  Widget build(BuildContext context) {


final items = <ItemBoton>[
  new ItemBoton( FontAwesomeIcons.carCrash, 'Motor Accident', Color(0xff6989F5), Color(0xff906EF5) ),
  new ItemBoton( FontAwesomeIcons.plus, 'Medical Emergency', Color(0xff66A9F2), Color(0xff536CF6) ),
  new ItemBoton( FontAwesomeIcons.theaterMasks, 'Theft / Harrasement', Color(0xffF2D572), Color(0xffE06AA3) ),
  new ItemBoton( FontAwesomeIcons.biking, 'Awards', Color(0xff317183), Color(0xff46997D) ),
  new ItemBoton( FontAwesomeIcons.carCrash, 'Motor Accident', Color(0xff6989F5), Color(0xff906EF5) ),
  new ItemBoton( FontAwesomeIcons.plus, 'Medical Emergency', Color(0xff66A9F2), Color(0xff536CF6) ),
  new ItemBoton( FontAwesomeIcons.theaterMasks, 'Theft / Harrasement', Color(0xffF2D572), Color(0xffE06AA3) ),
  new ItemBoton( FontAwesomeIcons.biking, 'Awards', Color(0xff317183), Color(0xff46997D) ),
  new ItemBoton( FontAwesomeIcons.carCrash, 'Motor Accident', Color(0xff6989F5), Color(0xff906EF5) ),
  new ItemBoton( FontAwesomeIcons.plus, 'Medical Emergency', Color(0xff66A9F2), Color(0xff536CF6) ),
  new ItemBoton( FontAwesomeIcons.theaterMasks, 'Theft / Harrasement', Color(0xffF2D572), Color(0xffE06AA3) ),
  new ItemBoton( FontAwesomeIcons.biking, 'Awards', Color(0xff317183), Color(0xff46997D) ),
];

    List<Widget> itemMap = items.map(
    (item) => FadeInLeft(
      duration: Duration(milliseconds: 200),
      child: ButtonWidget(
      icon: item.icon,
      text: item.texto,
      color1: item.color1,
      color2: item.color2,
      onPress: (){print("Hola");}
      ),
    )
  ).toList();



    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 200),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    SizedBox(height: 80),
                    ...itemMap
                  ],
                ),
              ),
              _HeaderW(),
            ],
          )
          
        ],
      ),
      //
   );
  }
}

class ButtonWidgetTemp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ButtonWidget(
        onPress: (){},
        color1: Color(0xff6989F5),
        color2: Color(0xff906EF5), 
        icon: FontAwesomeIcons.carCrash ,
        text: "Hola",
      ),
      ] 
    );
  }
}

class _HeaderW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HeadersWidget(
          icon: FontAwesomeIcons.plus,
          subtitulo: "Haz solicitado",
          titulo: "Asitencia Medica",
          color1: Color(0xff526BF6),
          color2: Color(0xff67ACF2),
        ),
        Positioned(
          right: 0,
          top: 40,
          child: RawMaterialButton
          (
            onPressed: (){},
            shape: CircleBorder(),
            padding: EdgeInsets.all(10.0),
            child: FaIcon(
              FontAwesomeIcons.ellipsisV, color: Colors.white,
            )
          )
        ),
      ],
    );
  }
}