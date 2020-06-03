// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroController on _CadastroBase, Store {
  final _$emailAtom = Atom(name: '_CadastroBase.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$senhaAtom = Atom(name: '_CadastroBase.senha');

  @override
  String get senha {
    _$senhaAtom.context.enforceReadPolicy(_$senhaAtom);
    _$senhaAtom.reportObserved();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.context.conditionallyRunInAction(() {
      super.senha = value;
      _$senhaAtom.reportChanged();
    }, _$senhaAtom, name: '${_$senhaAtom.name}_set');
  }

  final _$nameAtom = Atom(name: '_CadastroBase.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$enderecoAtom = Atom(name: '_CadastroBase.endereco');

  @override
  String get endereco {
    _$enderecoAtom.context.enforceReadPolicy(_$enderecoAtom);
    _$enderecoAtom.reportObserved();
    return super.endereco;
  }

  @override
  set endereco(String value) {
    _$enderecoAtom.context.conditionallyRunInAction(() {
      super.endereco = value;
      _$enderecoAtom.reportChanged();
    }, _$enderecoAtom, name: '${_$enderecoAtom.name}_set');
  }

  final _$telefoneAtom = Atom(name: '_CadastroBase.telefone');

  @override
  String get telefone {
    _$telefoneAtom.context.enforceReadPolicy(_$telefoneAtom);
    _$telefoneAtom.reportObserved();
    return super.telefone;
  }

  @override
  set telefone(String value) {
    _$telefoneAtom.context.conditionallyRunInAction(() {
      super.telefone = value;
      _$telefoneAtom.reportChanged();
    }, _$telefoneAtom, name: '${_$telefoneAtom.name}_set');
  }

  final _$testeAtom = Atom(name: '_CadastroBase.teste');

  @override
  File get teste {
    _$testeAtom.context.enforceReadPolicy(_$testeAtom);
    _$testeAtom.reportObserved();
    return super.teste;
  }

  @override
  set teste(File value) {
    _$testeAtom.context.conditionallyRunInAction(() {
      super.teste = value;
      _$testeAtom.reportChanged();
    }, _$testeAtom, name: '${_$testeAtom.name}_set');
  }

  final _$canRegisterAtom = Atom(name: '_CadastroBase.canRegister');

  @override
  bool get canRegister {
    _$canRegisterAtom.context.enforceReadPolicy(_$canRegisterAtom);
    _$canRegisterAtom.reportObserved();
    return super.canRegister;
  }

  @override
  set canRegister(bool value) {
    _$canRegisterAtom.context.conditionallyRunInAction(() {
      super.canRegister = value;
      _$canRegisterAtom.reportChanged();
    }, _$canRegisterAtom, name: '${_$canRegisterAtom.name}_set');
  }

  final _$getImageAsyncAction = AsyncAction('getImage');

  @override
  Future<dynamic> getImage() {
    return _$getImageAsyncAction.run(() => super.getImage());
  }

  final _$cadastroAsyncAction = AsyncAction('cadastro');

  @override
  Future<dynamic> cadastro(BuildContext context) {
    return _$cadastroAsyncAction.run(() => super.cadastro(context));
  }

  final _$_CadastroBaseActionController =
      ActionController(name: '_CadastroBase');

  @override
  bool verifyTextField(String text) {
    final _$actionInfo = _$_CadastroBaseActionController.startAction();
    try {
      return super.verifyTextField(text);
    } finally {
      _$_CadastroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic verifyIfCanRegister() {
    final _$actionInfo = _$_CadastroBaseActionController.startAction();
    try {
      return super.verifyIfCanRegister();
    } finally {
      _$_CadastroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmailC(String _email) {
    final _$actionInfo = _$_CadastroBaseActionController.startAction();
    try {
      return super.setEmailC(_email);
    } finally {
      _$_CadastroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenhaC(String _senha) {
    final _$actionInfo = _$_CadastroBaseActionController.startAction();
    try {
      return super.setSenhaC(_senha);
    } finally {
      _$_CadastroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNameC(String _name) {
    final _$actionInfo = _$_CadastroBaseActionController.startAction();
    try {
      return super.setNameC(_name);
    } finally {
      _$_CadastroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTelefoneC(String _telefone) {
    final _$actionInfo = _$_CadastroBaseActionController.startAction();
    try {
      return super.setTelefoneC(_telefone);
    } finally {
      _$_CadastroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEnderecoC(String _endereco) {
    final _$actionInfo = _$_CadastroBaseActionController.startAction();
    try {
      return super.setEnderecoC(_endereco);
    } finally {
      _$_CadastroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setImageTeste(File _teste) {
    final _$actionInfo = _$_CadastroBaseActionController.startAction();
    try {
      return super.setImageTeste(_teste);
    } finally {
      _$_CadastroBaseActionController.endAction(_$actionInfo);
    }
  }
}
