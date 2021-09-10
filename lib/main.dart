import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'html.dart';
import 'js.dart';
import 'bootstrap.dart';
import 'react.dart';
import 'metas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.pink),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bianca Miranda')),
      body: Center(
        child: Perfil(),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){abrirWhatsApp();},
      child: Icon(FontAwesomeIcons.whatsapp),),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(accountName: Text('Bianca Miranda'), accountEmail: Text('bianca.amirandaaguiar@gmail.com'), currentAccountPicture: CircleAvatar(child: Image.asset('../imagens/userprofile.png'),), decoration: BoxDecoration(color: Colors.pink),),
            ListTile(
              leading: Icon(FontAwesomeIcons.html5),
              title: Text('HTML/CSS'),
              onTap: (){Navigator.push(context, 
              MaterialPageRoute(builder: (context) => HtmlCssProjects()));},
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.js),
              title: Text('JavaScript'),
              onTap: (){Navigator.push(context, 
              MaterialPageRoute(builder: (context) => JsProjects()));},
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.bootstrap),
              title: Text('Bootstrap'),
              onTap: (){Navigator.push(context, 
              MaterialPageRoute(builder: (context) => BootstrapProjects()));},
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.react),
              title: Text('React Native'),
              onTap: (){Navigator.push(context, 
              MaterialPageRoute(builder: (context) => ReactProjects()));},
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.checkSquare),
              title: Text('Metas Para o Futuro'),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MetasDeVida()));},
            )
          ],
        ),
      )
    );
  }
}

class Perfil extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: ListView(children: [
        Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('../imagens/profilepic.jpg', height: 200,),
          
          SizedBox(height: 10,),

          Text('Olá, meu nome é Bianca Miranda. Sou de Fortaleza - Ceará - Brasil, faço faculdade de Ciências da Computação e estou num curso de Front End & Mobile na SoulCode Academy!'),

          SizedBox(height: 10,),

          Text("Hello, my name is Bianca Miranda. I'm from Fortaleza - Ceará - Brazil, I'm cursing computer science college and I'm in a Front End & Mobile course on SoulCode Academy!"),
          
          SizedBox(height: 10,),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center ,
            children: [ElevatedButton(onPressed: (){openUrl("https://www.linkedin.com/in/bianca-miranda-265386210/");}, child: Icon(FontAwesomeIcons.linkedin)), ElevatedButton(onPressed: (){openUrl("https://github.com/BiancaAMiranda");}, child: Icon(FontAwesomeIcons.github))],) 
        ],
      ),
      ],)
    );
  }
}

void openUrl(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Não foi possível abrir o link: $_url';

abrirWhatsApp() async {
  var whatsappUrl = "https://wa.me/5585996328204";

  if (await canLaunch(whatsappUrl)) {
    await launch(whatsappUrl);
  } else {
    throw 'Could not launch $whatsappUrl';
  }
}