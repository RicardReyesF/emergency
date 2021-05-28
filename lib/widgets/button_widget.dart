import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ButtonWidget extends StatelessWidget {

  final IconData icon;
  final String text;
  final Color color1;
  final Color color2;
  final Function onPress;

   ButtonWidget({
    this.icon = FontAwesomeIcons.circle,
    @required this.text,
    this.color1 = Colors.blue, 
    this.color2 = Colors.blueGrey, 
    @required this.onPress
});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPress,
      child: Stack(
        children: <Widget>[
          _Buttonbackground(color1: this.color1, color2: this.color2, icon: this.icon),
          _Buttonintro(icon: this.icon, onPress: this.onPress,text: this.text)
        ],
      ),
    );
  }
}

class _Buttonintro extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  final String text;

  _Buttonintro({
  this.icon, 
  this.onPress,
  this.text
  });



  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 140,width: 40,),
        FaIcon(this.icon,color: Colors.white,size: 40,),
        SizedBox(width: 20),
        Expanded(child: Text(this.text,style: TextStyle(color: Colors.white,fontSize: 18),)),
        FaIcon(FontAwesomeIcons.chevronRight,color: Colors.white,),
        SizedBox(width: 40,)
      ],
    );
  }
}

class _Buttonbackground extends StatelessWidget {
  
  final Color color1;
  final Color color2;
  final IconData icon;

  const _Buttonbackground({
  this.color1, 
  this.color2,
  this.icon
  });

  @override
  Widget build(BuildContext context) {
      return Container(
        width: double.infinity,
        height: 100,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(color: Colors.black.withOpacity(0.2),offset: Offset(4,6), blurRadius: 10)
          ],
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: <Color>[
              this.color1,
              this.color2

            ]
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              Positioned(
                right: -20,
                top: -20,
                child: FaIcon(this.icon, color: Colors.white.withOpacity(0.3),size: 150,)
              ),
            ],
          ),
        ),
    );
  }
}