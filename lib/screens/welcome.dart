import 'package:cota_facil/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                "Cota Fácil",
                style: Theme.of(context)
                    .textTheme
                    .headline
                    .copyWith(color: Theme.of(context).primaryColor),
              ),
              Text(
                "Encontre o melhor orçamento para sua construção!",
                style: Theme.of(context)
                    .textTheme
                    .subhead
                    .copyWith(color: Theme.of(context).primaryColor),
              ),
              SizedBox(height: 50),
              Image(
                image: AssetImage(
                  'assets/img/welcome.png',
                ),
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SignInButton(
                    Buttons.Google,
                    onPressed: () async {
                      setState(() => loading = true);
                      final user = await Auth.googleSignIn();
                      print(user);
                      setState(() => loading = false);
                    },
                  ),
                ],
              ))
            ],
          ),
        ))
      ]),
    );
  }
}
