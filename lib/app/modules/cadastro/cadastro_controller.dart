
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';
import 'package:searchdogs/app/modules/cadastro/repository/cadastro_repository.dart';
part 'cadastro_controller.g.dart';

class CadastroController = _CadastroBase with _$CadastroController;

abstract class _CadastroBase with Store {
  CadastroRepository repository;

//Info User

  @observable
  String email = "";

  @observable
  String senha = "";

  @observable
  String name = "";

  @observable 
  String endereco = "";

  @observable 
  String telefone = "";
    
   @observable
  File teste;

//Info Dog

  @observable
  String nomeDog;

  @observable
  String idadeDog;

  @observable
  String caractsDog;

  @observable
  String dataNascDog;

  @observable
  String hostilidadeDog;

  @observable
  String racaDog;

  @observable
  String porteDog;

  @observable
  String castradoDog;

  @observable
  String cuidadoDog;

  @observable
  String perdidoDog;

   @observable
  String sexoDog;

  @observable 
  bool canRegister = false;

  @action
   bool verifyTextField(String text){
     
     if(text.isEmpty || text.length < 1){
       return false;

     }else if(text.isNotEmpty && text.length > 2){

       return true;
     }

   }
  
  @action

  verifyIfCanRegister(){

    bool emailValid = verifyTextField(email);
    bool passValid = verifyTextField(senha);
    bool nameValid = verifyTextField(name);
    bool telefoneValid = verifyTextField(telefone);
    bool enderecoValid = verifyTextField(endereco); 

    if(emailValid && passValid && nameValid && telefoneValid && enderecoValid){
     
     canRegister = true;

    }else{

      canRegister = false;
    }

  }


//Info User

  @action
  void setEmailC(String _email) => email = _email;

  @action
  void setSenhaC(String _senha) => senha = _senha;

  @action
  void setNameC(String _name) => name = _name;
 
  @action
  void setTelefoneC(String _telefone) => telefone = _telefone; 

  @action
  void setEnderecoC(String _endereco) => endereco = _endereco;

  @action 
  void setImageTeste(File _teste)=>  teste = _teste;

   
//Info Dog

@action 
void setNomeDog(String _nomeDog) => nomeDog = _nomeDog;

@action 
void setIdadeDog(String _idadeDog) => idadeDog = _idadeDog;

@action 
void setcaractsDog(String _caractsDog) => caractsDog = _caractsDog;

@action 
void setdataNascDog(String _dataNascDog) => dataNascDog = _dataNascDog;

@action 
void sethostilidadeDog(String _hostilidadeDog) => dataNascDog = _hostilidadeDog;

@action 
void setracaDog(String _racaDog) => racaDog = _racaDog;

@action 
void setporteDog(String _porteDog) => porteDog = _porteDog;

@action 
void setcastradoDog(String _castradoDog) => castradoDog = _castradoDog;

@action 
void setcuidadoDog(String _cuidadoDog) => cuidadoDog = _cuidadoDog;

@action 
void setperdidoDog(String _perdidoDog) => perdidoDog = _perdidoDog;

@action 
void setsexoDog(String _sexoDog) => sexoDog = _sexoDog;

@action
Future getImage() async {
  teste = await ImagePicker.pickImage(source: ImageSource.gallery);
}  

      @action  
      Future cadastro(BuildContext context) async { 
      verifyIfCanRegister();  
      if(canRegister == false){
        print ("Erro Campo");
         return;
         
       }
    
        try{
      
        await repository.uploadImagem(teste);      
        await repository.registerOnHasura(email, senha, name, endereco, telefone, nomeDog, idadeDog, caractsDog, dataNascDog, hostilidadeDog, racaDog, porteDog, castradoDog, cuidadoDog, perdidoDog, sexoDog );
    
        }catch(e){
      
         String result = e.toString();
          
         print(e); 
    
         if(result.contains("ERROR_EMAIL_ALREADY_IN_USE")){
    
          print("Email ja esta em uso");
    
         }else if(result.contains("Password should be at least 6 characters")){
    
           print("Senha tem menos de 4 carecters");
    
         }
        }
      }
      
    _CadastroBase(this.repository);
    
      void setState(Null Function() param0) {}
  
}

