import 'package:mobx/mobx.dart';
part 'list_controller.g.dart';

class ListController = _ListControllerBase with _$ListController;

abstract class _ListControllerBase with Store {
  @observable
  ObservableList<String> _nomes = ObservableList.of(["Felipe", "Pedro"]);

  get nomes => _nomes;

  @action
  void addNome(String nome) {
    _nomes.add(nome);
  }
}
