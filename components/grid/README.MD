# Componente GridView

```dart
GridView()
```

##### SliverGridDelegateWithMaxCrossAxisExtent

Cria layouts de grade com quadrados, onde cada um possui uma extensão máxima do eixo cruzado.

Este delegado selecionará uma extensão do eixo cruzado para os blocos que seja o maior possível, sujeito às seguintes condições:

* A extensão divide uniformemente a extensão do eixo transversal da grade.
* A extensão é no máximo maxCrossAxisExtent.
* Por exemplo, se a grade é vertical, a grade tem 500,0 pixels de largura e maxCrossAxisExtent é 150,0, este delegado criará uma grade com 4 colunas com 125,0 pixels de largura.

Este delegado cria grades com blocos de tamanhos iguais e espaçados.

<br><br><br>

## Componente GridView, construtor count()

```dart
GridView.count()
```

Cria uma matriz 2D rolável de widgets com um número fixo de quadrados no eixo transversal.

Usa um SliverGridDelegateWithFixedCrossAxisCount como o gridDelegate.

* children - Recebe uma lista de componentes
* crossAxisCount (required) - indica quantos itens estão através do grid
* mainAxisSpacing - adiciona um espaçamento horizontal
* crossAxisSpacing - adiciona um espaçamento vertical

Exemplo:
Criando um grid layout com 3 itens disposto, não importa o tamanho da tela, sempre será no máximo 3 itens, em cada linha

```dart
GridView.count(
    crossAxisCount: 3,
    mainAxisSpacing: 20,
    crossAxisSpacing: 50,
    children: [
        Container(color: Colors.red),
        Container(color: Colors.red),
        Container(color: Colors.red),
        Container(color: Colors.red),
    ],
),
```