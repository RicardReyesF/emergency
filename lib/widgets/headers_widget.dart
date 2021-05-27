import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeadersWidget extends StatelessWidget {
  final IconData icon;
  final String subtitulo;
  final String titulo;
  final Color color1;
  final Color color2;

  const HeadersWidget({
    @required this.icon,
    @required this.subtitulo, 
    @required this.titulo, 
    this.color1 = Colors.blue, 
    this.color2 = Colors.blueGrey,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _HeaderBackground(this.color1,this.color2),
        Positioned(
          top: -50,
          left: -70,
          child: FaIcon(
            this.icon,size: 250, color: Colors.white.withOpacity(0.3),
          )
        ),
        Column(
          children: [
            SizedBox(height: 80,width: double.infinity,),
            Text(this.subtitulo,style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 20),),
            
            SizedBox(height: 20,),
            Text(this.titulo,style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 30,fontWeight: FontWeight.bold ),),

            SizedBox(height: 20,),
            FaIcon(this.icon,color: Colors.white,size: 80)
          ],
        )
      ],
    );
  }
}

class _HeaderBackground extends StatelessWidget {
  final Color color1;
  final Color color2;
  _HeaderBackground(
    this.color1,
    this.color2
  ); 
  @override
  Widget build(BuildContext context) {
    return Container(
       width: double.infinity,
       height: 300.0,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
         gradient: LinearGradient(
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
            colors: <Color>[
              this.color1,
              this.color2,
            ]
         )
       ),
    );
  }
}