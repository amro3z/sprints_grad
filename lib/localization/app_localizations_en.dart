// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get ourProducts => 'Our Products';

  @override
  String get hotOffers => 'Hot Offers';

  @override
  String get welcome => 'Welcome';

  @override
  String get addToCart => 'Item added to the cart';

  @override
  String get login => 'Login';

  @override
  String get signUp => 'Sign Up';

  @override
  String get welcomeBack => 'Welcome Back';

  @override
  String get signInTo => 'Sign in to ShopCraft';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get signInToShopCraft => 'Sign in ShopCraft';

  @override
  String get loginSuccess => 'Login Success';

  @override
  String get featuredProducts => 'Featured Products';

  @override
  String get shopOurCollection => 'Shop Our Collection';

  @override
  String get offerTitle1 => '50% Off Electronics';

  @override
  String get offerSubtitle1 => 'Limited time offer on all tech gadgets';

  @override
  String get offerTitle2 => 'Free Shipping Weekend';

  @override
  String get offerSubtitle2 => 'No delivery charges on orders above \$50';

  @override
  String get offerTitle3 => 'Buy 2 Get 1 Free';

  @override
  String get offerSubtitle3 => 'On selected accessories and peripherals';

  @override
  String get offerTitle4 => 'Student Discount';

  @override
  String get offerSubtitle4 => 'Extra 20% off with valid student ID';

  @override
  String get offerTitle5 => 'Bundle Deals';

  @override
  String get offerSubtitle5 => 'Save more when you buy complete setups';

  @override
  String get createAccount => 'Create Account';

  @override
  String get joinToday => 'Join ShopCraft today';

  @override
  String get fullName => 'Full Name';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String get error => 'Error';

  @override
  String get passwordMismatch => 'Passwords do not match. Please try again.';

  @override
  String get accountCreated => 'Account Created!';

  @override
  String get accountCreatedSuccess => 'Account created successfully';

  @override
  String get itemAdded => 'Item added to the cart';

  @override
  String addedToCart(Object productName) {
    return '$productName has been added to your cart';
  }
}
