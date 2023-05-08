import 'package:flutter/material.dart';
import 'package:open_weather/design_system/constants/colors.dart';
import 'package:open_weather/design_system/constants/sizes.dart';
import 'package:open_weather/design_system/widgets/app_textfield.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.dark800,
        appBar: AppBar(title: const Text('Se connecter')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(AppPadding.contentPadding),
          child: Column(
            children: [
              const AppTextField(
                label: 'Email',
                icon: Icons.person,
              ),
              const SizedBox(height: 24),
              const AppTextField(
                label: 'Mot de passe',
                icon: Icons.lock,
              ),
              ElevatedButton(
                child: const Text('Se connecter'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
