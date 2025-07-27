import 'package:flutter/material.dart';

class WelcomePic extends StatelessWidget {
  const WelcomePic({super.key , required this.imageUrl , this.isNetworkPic = true});
  final String imageUrl ;
  final bool isNetworkPic;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: isNetworkPic
          ? Image.network(
        imageUrl,
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.15,
        fit: BoxFit.cover,
      )
          : Image.asset(
        imageUrl,
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.15,
        fit: BoxFit.cover,
      ),
    );
  }
}