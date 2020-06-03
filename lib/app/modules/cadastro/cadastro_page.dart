
import 'package:flutter/material.dart';
import 'package:searchdogs/app/modules/cadastro/cadastro_controller.dart';
import 'package:searchdogs/app/modules/home/home_module.dart';
class CadastroPage extends StatefulWidget {
  final String title;
  const CadastroPage({Key key, this.title = "Cadastro"}) : super(key: key);
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

CadastroController controller = HomeModule.to.get();

class _CadastroPageState extends State<CadastroPage> {
  @override


  Widget build(BuildContext context) {

        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: ListView(
            children: <Widget>[  
              TextField (
              onChanged: controller.setEmailC,    
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),

            SizedBox(
              height: 10,
            ),

            TextField (
            
              onChanged: controller.setSenhaC,  
              obscureText: true,  
              decoration: InputDecoration(
                hintText: "Senha",
              ),
            ),
          SizedBox(
              height: 10,
            ),
            TextField (
              onChanged: controller.setNameC,    
              decoration: InputDecoration(
                hintText: "Name",
              ),
            ),

            SizedBox(
              height: 10,
            ),
             TextField (
              onChanged: controller.setEnderecoC,    
              decoration: InputDecoration(
                hintText: "enderco",
              ),
            ),
          SizedBox(
              height: 10,
            ),
            TextField (
              onChanged: controller.setTelefoneC,    
              decoration: InputDecoration(
                hintText: "Telefone",
              ),
            ),
            SizedBox(
              height: 10,
            ),
           

          SizedBox(
             child: Text(
               "Cadastro do Cachorro",
               )
            ),

            SizedBox(
              height: 10,
              ),

          TextField (
              onChanged: controller.setNomeDog,    
              decoration: InputDecoration(
                hintText: "Nome",
              ),
            ),
            
             SizedBox(
              height: 10,
              ),


           TextField (
              onChanged: controller.setIdadeDog,    
              decoration: InputDecoration(
                hintText: "Idade",
              ),
            ),

             SizedBox(
              height: 10,
              ),

            TextField (
              onChanged: controller.setcaractsDog,    
              decoration: InputDecoration(
                hintText: "Caracteristicas",
              ),
            ),
            
             SizedBox(
              height: 10,
              ),
                 
            TextField (
              onChanged: controller.setdataNascDog,    
              decoration: InputDecoration(
                hintText: "Data de nascimento",
              ),
            ),

            SizedBox(
              height: 10,
              ),     

             TextField (
              onChanged: controller.sethostilidadeDog,    
              decoration: InputDecoration(
                hintText: "Hostilidade",
              ),
            ),

             SizedBox(
              height: 10,
              ),     

             TextField (
              onChanged: controller.setcaractsDog,    
              decoration: InputDecoration(
                hintText: "Caracteristicas",
              ),
            ),

            SizedBox(
              height: 10,
              ),  

          TextField (
              onChanged: controller.setracaDog,    
              decoration: InputDecoration(
                hintText: "Raça",
              ),
            ),

             SizedBox(
              height: 10,
              ),    

           TextField (
              onChanged: controller.setporteDog,    
              decoration: InputDecoration(
                hintText: "Porte do Cachorro",
              ),
            ),

             SizedBox(
              height: 10,
              ),   

            TextField (
              onChanged: controller.setcastradoDog,    
              decoration: InputDecoration(
                hintText: "E castrado",
              ),
            ),

             SizedBox(
              height: 10,
              ),     

            TextField (
              onChanged: controller.setcuidadoDog,    
              decoration: InputDecoration(
                hintText: "Cuidados",
              ),
            ),

             SizedBox(
              height: 10,
              ),     

            TextField (
              onChanged: controller.setperdidoDog,    
              decoration: InputDecoration(
                hintText: "Ele esta perdido",
              ),
            ),
            SizedBox(
              height: 10,
              ),     
         TextField (
              onChanged: controller.setsexoDog,    
              decoration: InputDecoration(
                hintText: "Sexo",
              ),
            ),

            GestureDetector(
              onTap: () async {
                
                await controller.getImage();
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
                      "Imagem",
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
                       child:
                       Icon(Icons.camera_enhance, color: Colors.white,) 
                       ),
                       ),
                    
                  ],
                ),
             ),
            ), 
            SizedBox(
              height: 10,
              ),     
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () async {
                print("print");
                await controller.cadastro(context);
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
                      "cadastro",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                  ],
                ),
             ),
            ), 
        
        ],
      ),
    );
  }
}