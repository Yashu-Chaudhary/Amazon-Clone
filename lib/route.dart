import 'package:amazon/features/auth/screens/auth_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateroute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(builder: (_) => const AuthScreen());

    default:
      return MaterialPageRoute(builder: (_) => const Scaffold(
        body: Center(
          child: Text('Screen Does Not Exist'),
        ),
      ));

  }
}
