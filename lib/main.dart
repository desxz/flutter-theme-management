import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/home_scree.dart';
import 'theme/manager/theme_manager.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeManager.instance),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomeScreen(),
      theme: context
          .watch<ThemeManager>()
          .generateTheme(context.watch<ThemeManager>().currentTheme!),
    );
  }
}
