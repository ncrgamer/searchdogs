
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:searchdogs/app/modules/login/repository/login_repository.dart';
import 'package:searchdogs/app/modules/show/show_page.dart';
import 'package:searchdogs/app/shared/users_model.dart';

part 'login_controller.g.dart';

class LoginController = _LoginBase with _$LoginController;

abstract class _LoginBase with Store {
  
  LoginRepository repository;

  @observable
  String email = "";

  String pass = "";
  @observable
  @action
  void setEmail(String _email) => email = _email;

  @action
  void setPass(String _pass) => pass = _pass;

  @action
  Future login(BuildContext context) async {
    try{
      UsersModel a = await repository.getUser(email, pass);
     showDialog(
  barrierDismissible: false,
  context: context,
  builder: (BuildContext context){

    return AlertDialog(
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(7.0))),
      contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      content: Container(
        width: 300.0,
        height: 90.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(backgroundColor: Colors.orangeAccent,),
            Text("Carregando...",
              style: TextStyle(
                fontFamily: "OpenSans",
                color:  Colors.black
                )
              )
          ]
          )
        )

      );
  }

  );
      await  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => ShowPage(name: a.name, image: a.image,)));
    }

    catch (e) {
  print(e);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        
        return AlertDialog(
          title: new Text("Erro"),
          content: new Text("Email ou Senha Incorretos"),
          actions: <Widget>[
    
            new FlatButton(
              child: new Text("Fechar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
     
    }
} 
  _LoginBase(this.repository);
}
