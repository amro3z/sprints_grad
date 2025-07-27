import 'package:flutter/material.dart';
import 'package:shopping_app/localization/app_localizations.dart';
import 'package:shopping_app/main.dart'; 
import 'package:shopping_app/widgets/custom_bottom.dart';
import 'package:shopping_app/widgets/welcome_pic.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  void _toggleLocale(BuildContext context) {
    final currentLocale = Localizations.localeOf(context);
    final newLocale = currentLocale.languageCode == 'ar'
        ? const Locale('en')
        : const Locale('ar');
    InitWidget.of(context)?.setLocale(newLocale);
  }

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'ShopCraft',
          style: TextStyle(
            fontFamily: 'CustomFont',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.language, color: Colors.white),
            onPressed: () => _toggleLocale(context),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A7FE8), Color(0xFF9A63EA)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              appLocalizations.yourpremiumshoppingexperience,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'CustomFont',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WelcomePic(
                  imageUrl:
                      'https://alpinerings.com/cdn/shop/articles/cover.jpg?v=1648040822',
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                WelcomePic(
                  imageUrl:
                    "assets/pics/welcome_pic.png",
                  isNetworkPic: false,
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomBottom(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  title: appLocalizations.login,
                  foregroundColor: Colors.deepPurpleAccent[700]!,
                  backgroundColor: Colors.white,
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                CustomBottom(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  title: appLocalizations.signUp,
                  foregroundColor: Colors.deepPurpleAccent[700]!,
                  backgroundColor: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
