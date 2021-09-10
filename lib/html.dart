import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'main.dart';

class HtmlCssProjects extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(FontAwesomeIcons.html5),
        title: Text('HTML/CSS'),
      ),
      body: HtmlCss(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));},
        child: Icon(FontAwesomeIcons.home),
      ),
    );
  }
}

class HtmlCss extends StatelessWidget{
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

        ElevatedButton(onPressed: (){openUrl("https://biancaamiranda.github.io/butterflypedia/");}, child: Text('butterflypedia'), style: ElevatedButton.styleFrom(
            fixedSize: Size(240, 80),
        ),),

        SizedBox(height:20),
        
        ElevatedButton(onPressed: (){openUrl("https://biancaamiranda.github.io/txt_lyrics/");}, child: Text('txt_lyrics'), style: ElevatedButton.styleFrom(
            fixedSize: Size(240, 80),
        ),), 

        SizedBox(height:20), 
        
        ElevatedButton(onPressed: (){openUrl("https://biancaamiranda.github.io/enhypen_site/");}, child: Text('enhypen_site'), style: ElevatedButton.styleFrom(
            fixedSize: Size(240, 80),
        ),),

        SizedBox(height:20),

        ElevatedButton(onPressed: (){openUrl("https://biancaamiranda.github.io/instagram/");}, child: Text('instagram'), style: ElevatedButton.styleFrom(
            fixedSize: Size(240, 80),
        ),),

        SizedBox(height:20),

        ElevatedButton(onPressed: (){openUrl('https://biancaamiranda.github.io/txt_site/');}, child: Text('txt_site'), style: ElevatedButton.styleFrom(
            fixedSize: Size(240, 80),
        ),),

        SizedBox(height:20),

        ElevatedButton(onPressed: (){openUrl('https://biancaamiranda.github.io/Cine_SoulCode/');}, child: Text('Cine_SoulCode'), style: ElevatedButton.styleFrom(
            fixedSize: Size(240, 80),
        ),)],
      )
      ],)
    );
  }
}

void openUrl(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Não foi possível abrir o link: $_url';