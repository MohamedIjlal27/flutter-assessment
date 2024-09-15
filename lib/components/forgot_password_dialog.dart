import 'package:flutter/material.dart';
import 'package:trackingsystem/components/gradient_button.dart';

class ForgotPasswordDialog extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

  ForgotPasswordDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Forgot password?'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Enter your email and we'll send you instructions to reset your password",
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
              border: UnderlineInputBorder(),
            ),
          ),
        ],
      ),
      actions: [
        Center(
          child: GradientButton(
            text: 'Submit',
            onPressed: () {
              final email = _emailController.text;
              if (email.isNotEmpty) {
                print('Sending password reset instructions to $email');
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content:
                        Text('A mail has been sent to reset your password.'),
                  ),
                );
              } else {
                print('Please enter your email');
              }
            },
          ),
        ),
      ],
    );
  }
}
