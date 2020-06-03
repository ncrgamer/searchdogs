import 'package:mobx/mobx.dart';

part 'show_controller.g.dart';

class ShowController = _ShowBase with _$ShowController;

abstract class _ShowBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
