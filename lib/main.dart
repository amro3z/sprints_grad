import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shopping_app/localization/app_localizations.dart';
import 'package:shopping_app/route.dart';

void main() {
  runApp(const InitWidget());
}

class InitWidget extends StatefulWidget {
  const InitWidget({super.key});

  static _InitWidgetState? of(BuildContext context) =>
      context.findAncestorStateOfType<_InitWidgetState>();

  @override
  State<InitWidget> createState() => _InitWidgetState();
}

class _InitWidgetState extends State<InitWidget> {
  Locale _locale = const Locale('en');
  void setLocale(Locale newLocale) {
    setState(() {
      _locale = newLocale;
    });
  }

  final AppRoute _appRoute = AppRoute();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: _locale,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      builder: (context, child) {
        return Directionality(
          textDirection: _locale.languageCode == 'ar'
              ? TextDirection.rtl
              : TextDirection.ltr,
          child: child!,
        );
      },
      onGenerateRoute: _appRoute.generateRoute,
    );
  }
}
