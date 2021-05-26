# Criando um menu popup

```dart
PopupMenuButton(
    icon: Icon(Icons.more_vert),
    onSelected: _selectPopupMenuItem,
    itemBuilder: (_) => [
        PopupMenuItem(
            child: Text('Favoritos'),
            value: FilterProductOptions.FAVORITES,
        ),
        PopupMenuItem(
            child: Text('Mostrar todos'),
            value: FilterProductOptions.ALL,
        ),
    ],
)
```