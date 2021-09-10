import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'main.dart';

class ReactProjects extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(FontAwesomeIcons.react),
        title: Text('React'),
      ),
      body: React(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));},
        child: Icon(FontAwesomeIcons.home),
      ),
    );
  }
}

class React extends StatelessWidget{
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

        ElevatedButton(onPressed: (){openUrl("https://github.com/BiancaAMiranda/Calculadora_React");}, child: Text('Calculadora_React'), style: ElevatedButton.styleFrom(
            fixedSize: Size(240, 80),
        ),),

        SizedBox(height:20),

        ElevatedButton(onPressed: (){openUrl("https://github.com/BiancaAMiranda/imc_calculator");}, child: Text('imc_calculator'), style: ElevatedButton.styleFrom(fixedSize: Size(240, 80),
        ),),

        SizedBox(height:20),

        ElevatedButton(onPressed: (){openUrl("https://github.com/BiancaAMiranda/Soul_Mili");}, child: Text('Soul_Mili'), style: ElevatedButton.styleFrom(
              fixedSize: Size(240, 80),
        ),),
    ]),
      ],)
      );
  }
}

void openUrl(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Não foi possível abrir o link: $_url';