
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:searchdogs/app/shared/users_model.dart';
class CadastroRepository extends Disposable {
  static const String url = "https://searchdog.herokuapp.com/v1/graphql";
  var urlImage;
  var idImage;

  final HasuraConnect connect = HasuraConnect(url);
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future cadastroWithEmail(String email, String senha) async {
    try {

      AuthResult result = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: senha);
      FirebaseUser user = result.user;
      idImage = user.uid;
      return user.uid;
    } catch (e) {

      return e;
    }
  }


 StorageReference storageRef = FirebaseStorage.instance.ref();

    Future uploadImagem (imageFile) async {
      String name = idImage;
     StorageUploadTask uploadTask =
        storageRef.child("/Perfil "+name).putFile(imageFile);

     StorageTaskSnapshot storageSnap = await uploadTask.onComplete;
          String downloadUrl = await storageSnap.ref.getDownloadURL();
             urlImage = downloadUrl;
             urlImage = urlImage;
  }
  Future registerOnHasura(
    String email, String senha, String name, String endereco, String telefone,
    String nomeDog, String idadeDog, String caractsDog, String datanascDog, String hostilidadeDog, String sexoDog, String racaDog, String porteDog, String castradoDog, String cuidadosDog, String perdidoDog

    ) async {
    String uid = await cadastroWithEmail(email, senha);
    String mutation = """
      mutation MyMutation {
  __typename
  insert_users(objects: {endereco: "$endereco", image: "$urlImage", name: "$name", telefone: "$telefone", uid: "$uid"}) {
    affected_rows
  }
  insert_dog(objects: {caracts: "$caractsDog", castrado: "$castradoDog", cuidados: "$cuidadosDog", datanasc: "$datanascDog", hostilidade: "$hostilidadeDog", idade: "$idadeDog", nome: "$nomeDog", perdido: "$perdidoDog", porte: "$porteDog", raca: "$racaDog", sexo: "$sexoDog", uidUser: "$uid"}) {
    affected_rows
  }
}
""";
  var data = await connect.mutation(mutation); 
  return UsersModel.fromJson(data);
  }
  @override
  void dispose() {
  }

  getUser(e) {}
}
