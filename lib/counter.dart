import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  int count = 0;

  @action
  void increment() {
    count++;
  }
}

//rodar o gerador de codigo
//flutter packages pub run build_runner watch -> executa o code runner de forma automatica
//flutter packages pub run build_runner build -> executa o code runner apenas uma vez
//flutter packages pub run build_runner clean -> executa o code runner limpando os arquivos gerados

// class Counter {
//   //construtor
//   Counter() {
//     //invocando a minha ação
//     increment = Action(_increment);
//   }

//   //estado da variavel
//   Observable _count = Observable(0);

//   //invocando os estados
//   int get count => _count.value;

//   //tipo da ação
//   Action increment;

//   //execução da ação
//   void _increment() {
//     _count.value++;
//   }
// }
