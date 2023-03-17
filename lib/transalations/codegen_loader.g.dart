// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> ar = {
    "edit": "تحرير البيانات",
    "lang": "اللغات",
    "about": "معلومات عنا",
    "contact": "اتصل بنا",
    "nightmode": "وضع الليل",
    "privacy": "سياسة الخصوصية",
    "share": "مشاركة التطبيق",
    "signout": "خروج"
  };
  static const Map<String, dynamic> en = {
    "edit": "Edit Data",
    "lang": "Languages",
    "about": "About Us",
    "contact": "Contact Us",
    "nightmode": "Night Mode",
    "privacy": "privacy Policy",
    "share": "Share Application",
    "signout": "SignOut"
  };
  static const Map<String, dynamic> so = {
    "edit": "Badal Xogtada",
    "lang": "Luuqado",
    "about": "Ku saabsan",
    "contact": "xiriir",
    "nightmode": "Habka Habeenka",
    "privacy": "Qaanuunka Arrimaha Khaaska ah",
    "share": "La wadaag Codsiga",
    "signout": "Kabax"
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "ar": ar,
    "en": en,
    "so": so
  };
}
