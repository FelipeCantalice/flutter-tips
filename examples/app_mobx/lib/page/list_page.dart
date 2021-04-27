import 'package:app_mobx/controllers/list_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final controller = ListController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Nomes:",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Observer(
            builder: (_) => Expanded(
              child: ListView.builder(
                itemCount: controller.nomes.length,
                itemBuilder: (ctx, i) => ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    controller.nomes[i],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
