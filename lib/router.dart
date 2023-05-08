import 'package:flutter/material.dart';
import 'package:open_weather/presentation/home/home_view.dart';
import 'package:open_weather/presentation/sign_in/sign_in_view.dart';

Route routes(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
        builder: ((context) => const SignInView()),
      );

    case '/loggued':
      return MaterialPageRoute(
        builder: ((context) {
          final HomeViewParams params = settings.arguments as HomeViewParams;

          return HomeView(userName: params.userName);
        }),
      );

    default:
  }

  return MaterialPageRoute(
    builder: ((context) => const Text('Unknown page')),
  );
}
