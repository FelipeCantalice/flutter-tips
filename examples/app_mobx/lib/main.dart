import 'package:app_mobx/page/counter_page.dart';
import 'package:app_mobx/page/list_page.dart';
import 'package:flutter/material.dart';

import 'page/provider_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Navigation(),
    );
  }
}

class Navigation extends StatelessWidget {
  const Navigation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _navigatePage(Widget page) {
      Navigator.push(context, MaterialPageRoute(builder: (ctx) => page));
    }

    void _navigateCount() => _navigatePage(CounterPage());

    void _navigateList() => _navigatePage(ListPage());

    void _navigateProvider() => _navigatePage(ProviderUser());

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: _navigateCount,
            child: Text("Counter"),
          ),
          TextButton(
            onPressed: _navigateList,
            child: Text("List"),
          ),
          TextButton(
            onPressed: _navigateProvider,
            child: Text("Mobx and Provider"),
          ),
        ],
      ),
    );
  }
}
