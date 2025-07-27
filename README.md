# 🛒 Shopping App

A sleek and shopping mobile application built using **Flutter**. This app demonstrates clean architecture, localization support (English & Arabic), and modular UI components.

---

## 🧩 Project Overview

This project is a modern shopping app built with Flutter, targeting both English and Arabic users. It showcases a simple shopping flow, custom UI widgets, and internationalization using `flutter_localizations` and `.arb` files.

---

## ✨ Features

- 🌍 **Localization** (English 🇺🇸 & Arabic 🇸🇦)
  - This app supports two languages: English and Arabic, using Flutter's localization system.
  - All strings are defined in .arb files (under /lib/l10n)
  - The class AppLocalizations is auto-generated via flutter gen-l10n
  - To regenerate the localization files:
    - flutter gen-l10n
- 📦 Custom reusable widgets:
  - CustomFormTextField
  - CustomBottom
  - ProductCard
  - Custom App Bar
  - Custom Dialog
- 🧾 Beautiful app bar with gradient background
- 🔐 Form validation for:
  - Email
  - Name
  - Phone
  - Password
  - Number
- 📱 Fully responsive layout using `MediaQuery`
- 🔀 Dynamic routing using centralized `AppRoute` class
- ✅ Clean & maintainable folder structure

---
## 📂 Project Structure

```plaintext
lib/
├── l10n/
├── localization/
├── screens/
├── widgets/
├── route.dart
└── main.dart

```
---
---

## 📷 Screenshots

<div align="center">
<img width="140"  alt="image" src="https://github.com/user-attachments/assets/be035ac4-065a-4d91-a27d-8a1db5d26231" />
<img width="140"  alt="image" src="https://github.com/user-attachments/assets/62c408c0-b30e-4ce3-938e-ebaa79c63148" />
<img width="140"  alt="image" src="https://github.com/user-attachments/assets/9709a615-d0bb-4374-a601-1376a672369a" />
<img width="140"  alt="image" src="https://github.com/user-attachments/assets/267bb441-78ff-41fe-a0f7-eb517af5cddf" />
<img width="140" alt="image" src="https://github.com/user-attachments/assets/13e11edd-d7f6-4994-aebb-567dde13a644" />
<img width="140"  alt="image" src="https://github.com/user-attachments/assets/6dbfae84-4508-40a7-9179-2662d7a5ae6e" />
<img width="140"  alt="image" src="https://github.com/user-attachments/assets/6b1d71f8-0dea-4c78-82b2-8e4d0f85178a" />
<img width="140"  alt="image" src="https://github.com/user-attachments/assets/364da854-176c-4887-b86e-baf87717b23d" />
<img width="140"  alt="image" src="https://github.com/user-attachments/assets/3c6dda6d-ce5d-4371-9491-fb5bafc92675" />
<img width="140"  alt="image" src="https://github.com/user-attachments/assets/feb3015a-e2b0-4e4e-ae7a-ec0a540efc64" />
<img width="140"  alt="image" src="https://github.com/user-attachments/assets/cb77099a-0765-4892-a669-009660eade13" />
<img width="140"  alt="image" src="https://github.com/user-attachments/assets/5217d660-a179-472b-ad97-67119e879aa5" />
<img width="140"  alt="image" src="https://github.com/user-attachments/assets/22509e27-6cb1-449b-a367-4beb9a68a47a" />
<img width="140"  alt="image" src="https://github.com/user-attachments/assets/8244de6f-6c65-4cbe-baa9-d6ed68efaca9" />
<img width="140"  alt="image" src="https://github.com/user-attachments/assets/44e6d1c2-3ddb-408a-957e-f816d373cb4f" />
<img width="140"  alt="image" src="https://github.com/user-attachments/assets/55815a35-c284-4d6d-82ce-de0fa656232d" />
<img width="140"  alt="image" src="https://github.com/user-attachments/assets/c9c0b4c5-1819-498c-8d11-1e647e74a1b8" />
<img width="140"  alt="image" src="https://github.com/user-attachments/assets/ac610e27-1825-47b0-bdaf-629c10b0ff06" />
<img width="140"  alt="image" src="https://github.com/user-attachments/assets/03518ae2-8b74-4418-aa05-4707aa41e3f7" />
<img width="140"  alt="image" src="https://github.com/user-attachments/assets/c147da36-2dbf-4769-88bd-a9f2cae6a222" />
<img width="140"  alt="image" src="https://github.com/user-attachments/assets/284aa178-c297-4de0-8f4d-aa8b61d62040" />

</div>


---
## 🛠 Setup Instructions

### 1. Clone the repository

```bash
git clone https://github.com/your-username/shopping_app.git
cd shopping_app
flutter pub get
flutter run
