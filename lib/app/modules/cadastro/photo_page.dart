import 'package:flutter/material.dart';
import 'package:searchdogs/app/modules/cadastro/cadastro_controller.dart';
import 'package:searchdogs/app/modules/home/home_module.dart';

class PhotoPage extends StatefulWidget {
  final String title;
  const PhotoPage({Key key, this.title = "Escolha uma Foto"}) : super(key: key);
  @override
  _PhotoPage createState() => _PhotoPage();
}

CadastroController controller = HomeModule.to.get();

class _PhotoPage extends State<PhotoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          
        ],
      ),
    );
  }
}
