import 'package:mobx/mobx.dart';

class Counter {
  //construtor
  Counter() {
    //invocando a minha ação
    increment = Action(_increment);
  }

  //estado da variavel
  Observable _count = Observable(0);

  //invocando os estados
  int get count => _count.value;

  //tipo da ação
  Action increment;

  //execução da ação
  void _increment() {
    _count.value++;
  }
}
