

import 'package:searchdogs/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:searchdogs/app/app_widget.dart';
import 'package:searchdogs/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
        ];
                
  @override
  Widget get bootstrap => AppWidget();
 
    static Inject get to => Inject<AppModule>.of();
}   
    
