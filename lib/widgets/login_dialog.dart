import 'package:flutter/material.dart';

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false, // مايتقفلش بالضغط خارج الـ Dialog
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Welcome!',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'CustomFont',
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Account sign-in successfully',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'CustomFont',
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop(); // يغلق الـ Dialog
                      },
                      child: const Text(
                        'Close',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: 'CustomFont',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // زر الإغلاق (X)
            IconButton(
              icon: const Icon(Icons.close, color: Colors.black54),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      );
    },
  );
}
