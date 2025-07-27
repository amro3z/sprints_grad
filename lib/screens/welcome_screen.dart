import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/custom_bottom.dart' show CustomBottom;
import 'package:shopping_app/widgets/welcome_pic.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            const Text(
              'Your Premium Shopping Experience',
              style: TextStyle(
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
                      'https://www.jotform.com/blog/wp-content/uploads/2021/03/1.sectionv2_900x700-700x544.png',
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
                  title: 'Login',
                  foregroundColor: Colors.deepPurpleAccent[700]!,
                  backgroundColor: Colors.white,
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                CustomBottom(
                  onPressed: () {
                     Navigator.pushNamed(context, '/signup');
                  },
                  title: 'Sign UP',
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
