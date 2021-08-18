import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../localization/keys/locale_keys.g.dart';
import '../localization/manager/localization_manager.dart';
import '../theme/manager/theme_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final themeManager = ThemeManager.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('Theme Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () async {
                    await context
                        .setLocale(LocalizationManager.instance.trTRLocale);
                  },
                  child: Text(
                    'TURKISH',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                ),
                TextButton(
                  onPressed: () async {
                    await context
                        .setLocale(LocalizationManager.instance.enUSLocale);
                  },
                  child: Text(
                    'ENGLISH',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                ),
              ],
            ),
            Text(LocaleKeys.welcome).tr(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
            ),
            TextButton(
              onPressed: () {
                themeManager.changeTheme(ThemeEnum.GREEN);
              },
              child: Text(
                'GREEN THEME !',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(backgroundColor: Colors.green),
            ),
            TextButton(
              onPressed: () {
                themeManager.changeTheme(ThemeEnum.ORANGE);
              },
              child:
                  Text('ORANGE THEME !', style: TextStyle(color: Colors.white)),
              style: TextButton.styleFrom(backgroundColor: Colors.orange),
            ),
            TextButton(
              onPressed: () {
                themeManager.changeTheme(ThemeEnum.BLUE);
              },
              child:
                  Text('BLUE THEME !', style: TextStyle(color: Colors.white)),
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
