import 'package:flutter/material.dart';
import 'package:open_weather/design_system/constants/colors.dart';
import 'package:open_weather/design_system/constants/sizes.dart';
import 'package:open_weather/design_system/widgets/app_textfield.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.dark800,
        appBar: AppBar(
          title: Text(l10n!.login),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(AppPadding.contentPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppTextField(
                label: l10n.email,
                icon: Icons.person,
              ),
              const SizedBox(height: AppPadding.gap16),
              AppTextField(
                label: l10n.password,
                icon: Icons.lock,
              ),
              const SizedBox(height: AppPadding.gap24),
              ElevatedButton(
                child: Text(l10n.toLogIn),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
