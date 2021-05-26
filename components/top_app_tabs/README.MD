
1. Definimos nossa materialApp bar

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Tabs(),
    );
  }
}
```

2. Adicionamos uma tela

```dart
// ############ Tela 1  #################
class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Tela 1"),
      ),
    );
  }
}
```

3. Adicionamos outra tela, uma aba de navegação, fica sem graça somente
com uma tela :)

```dart
// ############ Tela 2  #################
class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Tela 2"),
      ),
    );
  }
}
```

4. Criaremos o componente responável por gerenciar as abas, navegação entre as telas
e gerenciar os eventos de toque.

* Utilizaremos o componente DefaultTabController, no topo da árvore
    O componente possui alguns parametros de configuração

    * length - qauntidade de abas
    * initialIndex - indice da tela, na qual será mostrado inicialmente
    * child - componente filho

    no child colocaremos um Scaffold, e adicionaremos uma AppBar, onde usaremos a própriedade
    appBar onde adicionaremos o title(recebe um widget), e a propriedade bottom, onde adicionaremos
    os componentes responsáveis por adicionar as tabs

```dart
// ############ Tela 2  #################

/**
 *  Componente responsável por gerenciar 
 *  as abas
 */
class Tabs extends StatefulWidget {
  Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Top tab bar"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.person),
                text: "Tela 01",
              ),
              Tab(
                icon: Icon(Icons.star),
                text: "Tela 02",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Screen1(),
            Screen2(),
          ],
        ),
      ),
    );
  }
}
```


#### Códido completo

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Tabs(),
    );
  }
}

// ############ Tela 1  #################
class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Tela 1"),
      ),
    );
  }
}

// ############ Tela 2  #################
class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Tela 2"),
      ),
    );
  }
}

/**
 *  Componente responsável por gerenciar 
 *  as abas
 */
class Tabs extends StatefulWidget {
  Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Top tab bar"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.person),
                text: "Tela 01",
              ),
              Tab(
                icon: Icon(Icons.star),
                text: "Tela 02",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Screen1(),
            Screen2(),
          ],
        ),
      ),
    );
  }
}

```