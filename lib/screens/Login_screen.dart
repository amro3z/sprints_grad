import 'package:flutter/material.dart';
import 'package:shopping_app/localization/app_localizations.dart';
import 'package:shopping_app/widgets/custom_bottom.dart';
import 'package:shopping_app/widgets/custom_form_textfield.dart';
import 'package:shopping_app/widgets/massage_dialog.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          local.login,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'CustomFont',
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF6A7FE8), Color(0xFF9A63EA)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        local.welcomeBack,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurpleAccent[700],
                          fontFamily: 'CustomFont',
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text(
                        local.signInToShopCraft,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'CustomFont',
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      CustomFormTextField(
                        hintText: local.email,
                        autovalidateMode: _autovalidateMode,
                        labelText: local.email,
                        keyboardType: CustomTextFieldType.email,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      CustomFormTextField(
                        hintText: local.password,
                        autovalidateMode: _autovalidateMode,
                        labelText: local.password,
                        obscureText: true,
                        keyboardType: CustomTextFieldType.password,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: CustomBottom(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              showCustomDialog(
                                context: context,
                                title: local.welcomeBack,
                                message: local.loginSuccess,
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white,
                                titleColor: Colors.green,
                                onClose: () {
                                  Navigator.pushReplacementNamed(
                                    context,
                                    '/home',
                                  );
                                },
                              );
                            } else {
                              setState(() {
                                _autovalidateMode = AutovalidateMode.always;
                              });
                            }
                          },
                          title: local.login,
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.deepPurpleAccent[700]!,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
