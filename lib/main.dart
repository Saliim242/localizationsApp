import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localizations/pages/home.dart';

import 'transalations/codegen_loader.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
        Locale('so'),
      ],
      path: "assets/languages",
      fallbackLocale: Locale('en'),
      saveLocale: true,
      assetLoader: CodegenLoader(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffF4F6F7),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
