import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../keys/codegen_loader.g.dart';
import '../manager/localization_manager.dart';

class LocalizationConfig extends StatelessWidget {
  const LocalizationConfig({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      path: LocalizationManager.instance.localePath!,
      supportedLocales: LocalizationManager.instance.supportedLocales,
      startLocale: LocalizationEnum.ENGLISH.translate,
      assetLoader: CodegenLoader(),
      child: MyApp(),
    );
  }
}
