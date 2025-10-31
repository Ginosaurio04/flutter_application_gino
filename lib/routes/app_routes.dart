import 'package:flutter_application_gino/models/menu_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_gino/screens/screen.dart';
import 'package:flutter_application_gino/screens/home_screen.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(
      route: '/contador',
      icon: Icons.home,
      title: 'Contador Screen',
      screen: const Contador(title: 'Contador'),
    ),
    MenuOptions(
      route: '/perfil',
      icon: Icons.person,
      title: 'Info Screen',
      screen: const Perfil(title: 'Perfil'),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({
      'home': (BuildContext context) => const HomeScreen(title: 'Menú'),
      '/contador': (BuildContext context) => const Contador(title: 'Contador'),
      '/perfil': (BuildContext context) => const Perfil(title: 'Perfil'),
    });

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
}
