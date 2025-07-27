import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductCarousel extends StatefulWidget {
  const ProductCarousel({super.key});

  @override
  State<ProductCarousel> createState() => _ProductCarouselState();
}

class _ProductCarouselState extends State<ProductCarousel> {
  int _currentIndex = 0;
  final CarouselSliderController _carouselController =
      CarouselSliderController();

  final List<String> imageUrls = [
    'https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1581091226825-a6a2a5aee158?w=800',
    'https://images.unsplash.com/photo-1500673922987-e212871fec22?w=400&h=300&fit=crop',
  ];

  final List<String> titles = [
    'Premium Laptop Collection',
    'Professional Workspace',
    'Ambient Lighting',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CarouselSlider.builder(
              carouselController: _carouselController,
              itemCount: imageUrls.length,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(imageUrls[index], fit: BoxFit.cover),
                        Positioned(
                          left: 16,
                          bottom: 16,
                          child: Text(
                            titles[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'CustomFont',
                              shadows: [
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(1, 1),
                                  blurRadius: 3,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),

            Positioned(
              left: 30,
              top: 80,
              child: _buildArrowButton(
                icon: Icons.arrow_back_ios_new,
                onTap: () {
                  _carouselController.previousPage();
                },
              ),
            ),

            Positioned(
              right: 30,
              top: 80,
              child: _buildArrowButton(
                icon: Icons.arrow_forward_ios,
                onTap: () {
                  _carouselController.nextPage();
                },
              ),
            ),
          ],
        ),

        const SizedBox(height: 12),

        // المؤشرات أسفل السلايدر
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageUrls.asMap().entries.map((entry) {
            return Container(
              width: 10,
              height: 10,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == entry.key
                    ? Colors.deepPurple
                    : Colors.grey[300],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildArrowButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black.withOpacity(0.3),
        ),
        child: Icon(icon, color: Colors.white, size: 15),
      ),
    );
  }
}
