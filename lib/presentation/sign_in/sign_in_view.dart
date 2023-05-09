import 'package:flutter/material.dart';
import 'package:open_weather/design_system/constants/colors.dart';
import 'package:open_weather/design_system/constants/sizes.dart';
import 'package:open_weather/design_system/widgets/app_textfield.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:open_weather/presentation/home/home_view.dart';
import 'package:open_weather/utils/utils.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  late AppLocalizations _l10n;

  String _email = '';
  String _password = '';

  String _formMessage = '';

  @override
  void didChangeDependencies() {
    _l10n = AppLocalizations.of(context)!;
    super.didChangeDependencies();
  }

  bool _isLoginValid() {
    if (_email.isEmpty && _password.isEmpty) {
      setState(() => _formMessage = _l10n.textFieldsNeedToBeFilled);
      return false;
    }

    if (!isEmailFormatValid(_email)) {
      setState(() => _formMessage = _l10n.emailMustBeValid);
      return false;
    }

    if (_password.length < 6) {
      setState(() => _formMessage = _l10n.passwordMustBeAtLeast6Characters);
      return false;
    }

    return true;
  }

  void _goToHome() {
    Navigator.pushNamed(
      context,
      '/loggued',
      arguments: HomeViewParams(userName: _email.split('@').first),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.dark800,
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
                hint: l10n.emailHint,
                onChanged: (value) => _email = value,
              ),
              const SizedBox(height: AppPadding.gap16),
              AppTextField(
                label: l10n.password,
                icon: Icons.lock,
                obscureText: true,
                onChanged: (value) => _password = value,
              ),
              const SizedBox(height: AppPadding.gap24),
              ElevatedButton(
                onPressed: () {
                  if (_isLoginValid()) {
                    _goToHome();
                  }
                },
                child: Text(l10n.toLogIn),
              ),
              if (_formMessage.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: AppPadding.padding12),
                  child: Text(
                    _formMessage,
                    style: const TextStyle(color: AppColors.error),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
