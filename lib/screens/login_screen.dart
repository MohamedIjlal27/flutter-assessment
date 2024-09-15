import 'package:flutter/material.dart';
import 'package:trackingsystem/components/forgot_password_dialog.dart';
import 'package:trackingsystem/components/custom_text_field.dart';
import 'package:trackingsystem/components/custom_button.dart';
import 'package:logger/logger.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Logger _logger = Logger();
  bool _rememberMe = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _login() {
    if (_formKey.currentState!.validate()) {
      final email = _emailController.text;
      final password = _passwordController.text;

      _logger.i('Logging in with email: $email and password: $password');
      Navigator.pushReplacementNamed(context, '/dashboard');
    } else {
      _logger.w('Please enter valid email and password');
    }
  }

  void _showForgotPasswordDialog() {
    showDialog(
      context: context,
      builder: (context) => ForgotPasswordDialog(),
    );
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'LOGO',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF033D8C),
                  ),
                ),
                const SizedBox(height: 180),
                CustomTextField(
                  controller: _emailController,
                  hintText: 'Enter your email',
                  iconPath: 'assets/mail.png',
                  validator: _validateEmail,
                  onChanged: (value) {
                    _formKey.currentState!.validate();
                  },
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  controller: _passwordController,
                  hintText: 'Enter your password',
                  iconPath: 'assets/lock.png',
                  obscureText: true,
                  validator: _validatePassword,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Checkbox(
                      value: _rememberMe,
                      onChanged: (value) {
                        setState(() {
                          _rememberMe = value!;
                        });
                      },
                    ),
                    const Text('Remember Me'),
                  ],
                ),
                const SizedBox(height: 20),
                CustomButton(
                  text: 'Log In',
                  onPressed: _login,
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: _showForgotPasswordDialog,
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(color: Color(0xFF0598D1)),
                  ),
                ),
                const SizedBox(height: 40),
                Image.asset(
                  'assets/delivery-boy.png',
                  height: 150,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
