import 'package:flutter/material.dart';
import 'package:flutterando/app/views/conversor_view.dart';
import 'package:flutterando/app_controller.dart';

import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primaryColor: Colors.red,
              brightness: AppController.instance.isDartTheme
                  ? Brightness.dark
                  : Brightness.light),
          routes: {
            '/': ((context) => LoginPage()),
            '/home': ((context) => HomePage()),
            '/conversor': ((context) => ConversorView()),
          },
        );
      },
    );
  }
}
