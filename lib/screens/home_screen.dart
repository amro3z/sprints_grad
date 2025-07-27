import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/custom_home_text.dart';
import 'package:shopping_app/widgets/page_product.dart';
import 'package:shopping_app/widgets/custom_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customAppBar(context: context),
            CustomHomeText(text: "Featured Products"),
            LoopingCarousel(),
            CustomHomeText(text: "Shop Our Collection"),
          ],
        ),
      ),
    );
  }
}
