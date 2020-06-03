import 'package:flutter/material.dart';
import 'package:searchdogs/app/modules/cadastro/cadastro_page.dart';
import 'package:searchdogs/app/modules/home/home_module.dart';
import 'package:searchdogs/app/modules/login/login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

LoginController controller = HomeModule.to.get();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/logo2.png"),
            ),
            TextField (
              keyboardType: TextInputType.emailAddress,
              onChanged: controller.setEmail,
              decoration: InputDecoration(
                hintText: "Email"
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField (
              onChanged: controller.setPass,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Senha"
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text("Recuperar senha"),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () async {
                print("ok");
                await controller.login(context);
              },
              child: Container(
                height: 60,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                ),


                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "  Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                     Container(child: 
                     SizedBox(
                        height: 35,
                        width: 35,
                       child:Image.asset("assets/bone.png"), 
                       ),
                       ),
                    
                  ],
                ),
             ),
            ), 


            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
               alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                   Text(
                      "  Login com o Facebook",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(child:
                       SizedBox(
                         child:
                         Image.asset("assets/fb-icon.png"), 
                         height: 35,
                         width: 35,
                      ),
                      ),
                  
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              onPressed: () {Navigator.push(context, 
                MaterialPageRoute(
                builder: (context) => CadastroPage(),
                ),
                );
                },
              child: Text("Cadastrar"),
            ),
          ],
        ),
      ),
    );
  }
}
