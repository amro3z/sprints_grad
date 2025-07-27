import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/custom_bottom.dart';
import 'package:shopping_app/localization/app_localizations.dart';

void showCustomDialog({
  required BuildContext context,
  required String title,
  required String message,
  required Color backgroundColor,
  required Color foregroundColor,
  required Color titleColor,
  void Function()? onClose,
}) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      final localizations = AppLocalizations.of(context)!;
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
                  Text(
                    title,
                    style: TextStyle(
                      color: titleColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'CustomFont',
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    message,
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
                    child: CustomBottom(
                      onPressed: onClose ?? () => Navigator.of(context).pop(),
                      title: localizations.ok, // 🔁 ترجمنا الزر
                      backgroundColor: backgroundColor,
                      foregroundColor: foregroundColor,
                    ),
                  ),
                ],
              ),
            ),
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
