import 'dart:async'; // 👈 مهم جداً
import 'package:flutter/material.dart';

class LoopingCarousel extends StatefulWidget {
  const LoopingCarousel({super.key});

  @override
  State<LoopingCarousel> createState() => _LoopingCarouselState();
}

class _LoopingCarouselState extends State<LoopingCarousel> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  Timer? _autoPlayTimer; // 👈 Timer للتنقل التلقائي

  final List<String> images = [
    'https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1581091226825-a6a2a5aee158?w=800',
    'https://images.unsplash.com/photo-1500673922987-e212871fec22?w=400&h=300&fit=crop',
  ];

  final List<String> titles = [
    'Premium Laptop Collection',
    'Professional Workspace',
    'Ambient Lighting',
  ];

  void _goTo(int index) {
    final int itemCount = images.length;
    int nextIndex = index;

    if (index < 0) {
      nextIndex = itemCount - 1;
    } else if (index >= itemCount) {
      nextIndex = 0;
    }

    _pageController.animateToPage(
      nextIndex,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
    setState(() => _currentIndex = nextIndex);
  }

  void _startAutoPlay() {
    _autoPlayTimer?.cancel();
    _autoPlayTimer = Timer.periodic(const Duration(seconds: 4), (timer) {
      _goTo(_currentIndex + 1);
    });
  }

  @override
  void initState() {
    super.initState();
    _startAutoPlay();
  }

  @override
  void dispose() {
    _autoPlayTimer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.22,
              width: MediaQuery.of(context).size.width * 0.9,
              child: PageView.builder(
                controller: _pageController,
                itemCount: images.length,
                onPageChanged: (index) {
                  setState(() => _currentIndex = index);
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.network(images[index], fit: BoxFit.cover),
                          Positioned(
                            left: 16,
                            bottom: 16,
                            child: Text(
                              titles[index],
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
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
              ),
            ),

            Positioned(
              left: 13,
              child: _arrowButton(
                icon: Icons.arrow_back_ios_new,
                onTap: () => _goTo(_currentIndex - 1),
              ),
            ),

            Positioned(
              right: 13,
              child: _arrowButton(
                icon: Icons.arrow_forward_ios,
                onTap: () => _goTo(_currentIndex + 1),
              ),
            ),
          ],
        ),

        const SizedBox(height: 12),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: images.asMap().entries.map((entry) {
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

  Widget _arrowButton({required IconData icon, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: () {
        onTap();
        _startAutoPlay();
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.black38,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.white, size: 16),
      ),
    );
  }
}
