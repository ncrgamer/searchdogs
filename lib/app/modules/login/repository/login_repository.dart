import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:searchdogs/app/shared/users_model.dart';

class LoginRepository extends Disposable {
  static const String url = "https://searchdog.herokuapp.com/v1/graphql";
  HasuraConnect connect = HasuraConnect(url);
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future loginWithEmail(String email, String pass) async {
    try {
      AuthResult result = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: pass);
      FirebaseUser user = result.user;
      return user.uid;
    } catch (e) {
      return e;
      
    }
  }

  Future<UsersModel> getUser(String email, String pass) async {
    String uid = await loginWithEmail(email, pass);
    String myQuery = """
        query MyQuery {
      users(where: {uid: {_eq: "$uid"}}) {
        uid
        image
        name
      }
    }
    """;

    var data = await connect.query(myQuery);
    return UsersModel.fromJson(data["data"]["users"][0]);
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
