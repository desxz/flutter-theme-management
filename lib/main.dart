import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'provider/multi_provider.dart';
import 'screen/home_screen.dart';
import 'theme/manager/theme_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    ProviderList(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Material App',
      home: HomeScreen(),
      theme: context.theme,
    );
  }
}
