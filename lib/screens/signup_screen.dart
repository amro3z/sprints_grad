import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/custom_bottom.dart';
import 'package:shopping_app/widgets/custom_form_textfield.dart';
import 'package:shopping_app/widgets/massage_dialog.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Sign Up',
          style: TextStyle(
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Create Account',
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
                      const Text(
                        'Join ShopCraft today',
                        style: TextStyle(
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
                        hintText: 'Full Name',
                        autovalidateMode: _autovalidateMode,
                        labelText: 'Full Name',
                        keyboardType: CustomTextFieldType.text,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      CustomFormTextField(
                        hintText: 'Email',
                        autovalidateMode: _autovalidateMode,
                        labelText: 'Email',
                        keyboardType: CustomTextFieldType.email,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      CustomFormTextField(
                        hintText: 'Password',
                        autovalidateMode: _autovalidateMode,
                        labelText: 'Password',
                        obscureText: true,
                        controller: _passwordController,
                        keyboardType: CustomTextFieldType.password,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      CustomFormTextField(
                        hintText: 'Confirm Password',
                        autovalidateMode: _autovalidateMode,
                        labelText: 'Confirm Password',
                        controller: _confirmPasswordController,
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
                              if (_passwordController.text !=
                                  _confirmPasswordController.text) {
                                showCustomDialog(
                                  context: context,
                                  title: 'Error',
                                  message:
                                      'Passwords do not match. Please try again.',
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                  titleColor: Colors.red,
                                );
                                return;
                              }
                              showCustomDialog(
                                context: context,
                                title: 'Account Created!',
                                message: 'Account created successfully',
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white,
                                titleColor: Colors.green,
                              );
                            } else {
                              setState(() {
                                _autovalidateMode = AutovalidateMode.always;
                              });
                            }
                          },
                          title: 'Sign Up',
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
