# Adicionado Drawer

Para utilizarmos o Drawer precisamos inserir no topo de nossa arvore, o componente Scaffold que irá nós fornecer a propriedade para adicionarmos o Drawer

```dart
Scaffold(
  drawer: // Drawer
);
```

Agora podermos inserer o Drawer, e adicionar outros componentes para porpular.
 
```dart
Scaffold(
  drawer: Drawer(
    child: // Populate the Drawer in the next step.
  ),
);
```

Um exemplo 
```dart
Drawer(
  // Add a ListView to the drawer. This ensures the user can scroll
  // through the options in the drawer if there isn't enough vertical
  // space to fit everything.
  child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text('Drawer Header'),
      ),
      ListTile(
        title: const Text('Item 1'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title: const Text('Item 2'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
    ],
  ),
);
```

Parar fechar o Drawer utilizarmos, o Navigator:

```dart
 Navigator.pop(context);
```