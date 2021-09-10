import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'main.dart';

class JsProjects extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(FontAwesomeIcons.js),
        title: Text('JavaScript'),
      ),
      body: JavaScript(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));},
        child: Icon(FontAwesomeIcons.home),
      ),
    );
  }
}

class JavaScript extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: ListView(children: [
        Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text('Projetos (Projects)', style: TextStyle(color: Colors.pink, fontSize: 20, fontWeight: FontWeight.bold),), 

        SizedBox(height:20),

        ElevatedButton(onPressed: (){openUrl("https://biancaamiranda.github.io/doramaflix/");}, child: Text('doramaflix'), style: ElevatedButton.styleFrom(
            fixedSize: Size(240, 80),
        ),),

        SizedBox(height:20),
        
        ElevatedButton(onPressed: (){openUrl("https://biancaamiranda.github.io/resgate_game/");}, child: Text('resgate_game'), style: ElevatedButton.styleFrom(
            fixedSize: Size(240, 80),
        ),),

        SizedBox(height:20),

        ElevatedButton(onPressed: (){openUrl("https://biancaamiranda.github.io/genius_game/");}, child: Text('genius_game'), style: ElevatedButton.styleFrom(
              fixedSize: Size(240, 80),
        ),),

        SizedBox(height:20),

        ElevatedButton(onPressed: (){openUrl('https://biancaamiranda.github.io/Calculadora_e_Conversor/');}, child: Text('Calculadora_e_Conversor'), style: ElevatedButton.styleFrom(
            fixedSize: Size(240, 80),
        ),),],
      )
      ],)
    );
  }
}

void openUrl(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Não foi possível abrir o link: $_url';