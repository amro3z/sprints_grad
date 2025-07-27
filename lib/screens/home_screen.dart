import 'package:flutter/material.dart';
import 'package:shopping_app/localization/app_localizations.dart';
import 'package:shopping_app/widgets/custom_appbar.dart';
import 'package:shopping_app/widgets/custom_home_text.dart';
import 'package:shopping_app/widgets/product_card.dart';
import 'package:shopping_app/widgets/page_product.dart';
import 'package:shopping_app/widgets/offer_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> products = [
    {
      'title': 'MacBook Pro 16"',
      'price': '\$2,399',
      'imageUrl':
          'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=400',
    },
    {
      'title': 'Wireless Headphones',
      'price': '\$299',
      'imageUrl':
          'https://images.unsplash.com/photo-1581091226825-a6a2a5aee158?w=400',
    },
    {
      'title': 'Smart Watch',
      'price': '\$399',
      'imageUrl':
          'https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=300&h=200&fit=crop',
    },
    {
      'title': 'Nature Painting',
      'price': '\$129',
      'imageUrl':
          'https://images.unsplash.com/photo-1500673922987-e212871fec22?w=300&h=200&fit=crop',
    },
    {
      'title': 'Premium Keyboard',
      'price': '\$199',
      'imageUrl':
          'https://images.unsplash.com/photo-1649972904349-6e44c42644a7?w=300&h=200&fit=crop',
    },
    {
      'title': 'Wireless Mouse',
      'price': '\$79',
      'imageUrl':
          'https://images.unsplash.com/photo-1582562124811-c09040d0a901?w=300&h=200&fit=crop',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customAppBar(context: context),
            CustomHomeText(text: local.featuredProducts),
            const LoopingCarousel(),
            CustomHomeText(text: local.shopOurCollection),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: GridView.builder(
                itemCount: products.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductCard(
                    title: product['title']!,
                    price: product['price']!,
                    imageUrl: product['imageUrl']!,
                  );
                },
              ),
            ),
            CustomHomeText(text: local.hotOffers),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(12),
              children: [
                OfferCard(
                  title: local.offerTitle1,
                  subtitle: local.offerSubtitle1,
                  badge: "50% OFF",
                ),
                OfferCard(
                  title: local.offerTitle2,
                  subtitle: local.offerSubtitle2,
                  badge: "FREE SHIP",
                ),
                OfferCard(
                  title: local.offerTitle3,
                  subtitle: local.offerSubtitle3,
                  badge: "B2G1",
                ),
                OfferCard(
                  title: local.offerTitle4,
                  subtitle: local.offerSubtitle4,
                  badge: "20% OFF",
                ),
                OfferCard(
                  title: local.offerTitle5,
                  subtitle: local.offerSubtitle5,
                  badge: "BUNDLE",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
