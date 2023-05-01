import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Se connecter')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  const AppTextField(label: 'Email'),
                  const AppTextField(label: 'Mot de passe'),
                  ElevatedButton(
                    child: const Text('Se connecter'),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AppTextField extends StatelessWidget {
  final String label;

  final IconData? icon;

  final void Function(String)? onChanged;

  const AppTextField({
    super.key,
    required this.label,
    this.onChanged,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label),
        const SizedBox(height: 4),
        TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 24,
              ),
              prefixIcon: icon != null
                  ? Icon(icon, color: Colors.red)
                  : const SizedBox()),
        ),
      ],
    );
  }
}
