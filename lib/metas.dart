import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'main.dart';

class MetasDeVida extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(FontAwesomeIcons.checkSquare),
        title: Text('Metas Para o Futuro'),
      ),
      body: Metas(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));},
        child: Icon(FontAwesomeIcons.home),
      ),
    );
  }
}

class Metas extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,    
        children: [
          Image.asset('../imagens/MyGif.gif', width: 200,),

          SizedBox(height: 20,),

          Text('Minhas metas para o futuro são:'),

          SizedBox(height: 20,),

          Text('- Conseguir um emprego como programadora.', style: TextStyle(fontWeight: FontWeight.bold)), 

          SizedBox(height: 20,),

          Text('- Contribuir de forma ativa na sociedade em que vivo e ajudar na redução da desigualdade tecnológica.', style: TextStyle(fontWeight: FontWeight.bold))]
      )
      );
  }
}