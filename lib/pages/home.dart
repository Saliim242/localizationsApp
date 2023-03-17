import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../transalations/locale_keys.g.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/languages/images/ss.png"),
              ),
              SizedBox(height: 10),
              Text(
                "Saalim Abuubakar Ahmed",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                height: 200 * 2.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[200]!,
                      blurRadius: 15,
                      offset: Offset(2, 4),
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.grey[200]!,
                      blurRadius: 15,
                      offset: Offset(-2, -4),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Profile(
                      icon: Icons.edit,
                      txt: LocaleKeys.edit.tr(),
                    ),
                    Profile(
                      icon: Icons.language,
                      txt: LocaleKeys.lang.tr(),
                    ),
                    Profile(
                      icon: Icons.info,
                      txt: LocaleKeys.about.tr(),
                    ),
                    Profile(
                      icon: Icons.phone,
                      txt: LocaleKeys.contact.tr(),
                    ),
                    Profile(
                      icon: Icons.light_mode,
                      txt: LocaleKeys.nightmode.tr(),
                    ),
                    Profile(
                      icon: Icons.privacy_tip,
                      txt: LocaleKeys.privacy.tr(),
                    ),
                    Profile(
                      icon: Icons.share,
                      txt: LocaleKeys.share.tr(),
                    ),
                    Profile(
                      icon: Icons.logout,
                      txt: LocaleKeys.signout.tr(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Buttons(
                    txt: "English",
                    onTap: () {
                      context.setLocale(Locale("en"));
                    },
                  ),
                  Buttons(
                    txt: "Somali",
                    onTap: () {
                      context.setLocale(Locale("so"));
                    },
                  ),
                  Buttons(
                    txt: "اللغة العربية",
                    onTap: () {
                      context.setLocale(Locale("ar"));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  Buttons({required this.txt, this.onTap});

  final String txt;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            textAlign: TextAlign.center,
            txt,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  Profile({required this.icon, required this.txt});

  final IconData icon;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.green,
          size: 30,
        ),
        SizedBox(width: 15),
        Text(
          txt,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
