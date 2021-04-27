import 'package:app_mobx/store/user_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class ProviderUser extends StatefulWidget {
  ProviderUser({Key key}) : super(key: key);

  @override
  _ProviderUserState createState() => _ProviderUserState();
}

class _ProviderUserState extends State<ProviderUser> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<UserStore>(
          create: (_) => UserStore(),
        ),
      ],
      child: HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        final userStore = context.watch<UserStore>();
        return Scaffold(
          appBar: AppBar(
            title: Text(
                userStore.nome.length > 1 ? userStore.nome : "Não logado!"),
          ),
          body: Homecreen(),
        );
      },
    );
  }
}

class Homecreen extends StatefulWidget {
  @override
  _HomecreenState createState() => _HomecreenState();
}

class _HomecreenState extends State<Homecreen> {
  @override
  Widget build(BuildContext context) {
    // read data from provider
    final userStore = context.read<UserStore>();
    return Container(
      child: TextButton(
        child: Text("Entrar teste click"),
        onPressed: () {
          // call function from provider
          userStore.setUser("Felipe");
        },
      ),
    );
  }
}
