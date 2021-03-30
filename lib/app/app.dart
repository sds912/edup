import 'package:edup/ui/router.dart' as appRouter;
import 'package:edup/ui/screens/welcome/welcomeScreen.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
      onGenerateRoute: appRouter.Router.generateRoute,
    );
  }
}
