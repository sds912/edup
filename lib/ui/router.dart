import 'package:edup/ui/screens/home/homeScreen.dart';
import 'package:edup/ui/screens/resume/resumeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const String initialRoute = "/";

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'main':
        return MaterialPageRoute(builder: (_) => HomeScreen());
        break;
      case 'resume':
        return MaterialPageRoute(builder: (_) => ResumeScreen());
        break;

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined'),
                  ),
                ));
    }
  }
}
