import 'package:emergenci/widgets/headers_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HeadersWidget(
        icon: FontAwesomeIcons.plus,
        subtitulo: "Haz solicitado",
        titulo: "Asitencia Medica",
        color1: Color(0xff526BF6),
        color2: Color(0xff67ACF2),
      ),
      /*appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          FaIcon(
            FontAwesomeIcons.memory
          )
        ],
      ),*/
   );
  }
}