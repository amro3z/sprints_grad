// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get ourProducts => 'منتجاتنا';

  @override
  String get hotOffers => ' 🔥العروض الساخنة';

  @override
  String get welcome => 'مرحبًا';

  @override
  String get addToCart => 'تمت إضافة العنصر إلى السلة';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get signUp => 'إنشاء حساب';

  @override
  String get welcomeBack => 'مرحبًا بعودتك';

  @override
  String get signInTo => 'قم بتسجيل الدخول إلى ShopCraft';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get password => 'كلمة المرور';

  @override
  String get signInToShopCraft => 'سجل فى ShopCraft';

  @override
  String get loginSuccess => 'تم تسجيل دخول بنجاح';

  @override
  String get featuredProducts => 'منتجات مميزة';

  @override
  String get shopOurCollection => 'تسوق مجموعتنا';

  @override
  String get offerTitle1 => 'خصم 50% على الإلكترونيات';

  @override
  String get offerSubtitle1 => 'لفترة محدودة على كل الأجهزة الذكية';

  @override
  String get offerTitle2 => 'توصيل مجاني في نهاية الأسبوع';

  @override
  String get offerSubtitle2 => 'بدون رسوم توصيل للطلبات فوق 50';

  @override
  String get offerTitle3 => 'اشترِ 2 واحصل على 1 مجانًا';

  @override
  String get offerSubtitle3 => 'على الإكسسوارات المحددة';

  @override
  String get offerTitle4 => 'خصم طلاب';

  @override
  String get offerSubtitle4 => 'خصم إضافي 20% ببطاقة طالب صالحة';

  @override
  String get offerTitle5 => 'عروض الباقات';

  @override
  String get offerSubtitle5 => 'وفر أكثر عند شراء مجموعات كاملة';

  @override
  String get createAccount => 'إنشاء حساب';

  @override
  String get joinToday => 'انضم إلى ShopCraft اليوم';

  @override
  String get fullName => 'الاسم الكامل';

  @override
  String get confirmPassword => 'تأكيد كلمة المرور';

  @override
  String get error => 'خطأ';

  @override
  String get passwordMismatch =>
      'كلمتا المرور غير متطابقتين. يرجى المحاولة مرة أخرى.';

  @override
  String get accountCreated => 'تم إنشاء الحساب!';

  @override
  String get accountCreatedSuccess => 'تم إنشاء الحساب بنجاح';

  @override
  String get itemAdded => 'تمت إضافة المنتج إلى السلة';

  @override
  String addedToCart(Object productName) {
    return 'تمت إضافة $productName إلى سلة التسوق الخاصة بك';
  }
}
