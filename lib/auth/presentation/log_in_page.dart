import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';
import 'package:pro_area_flutter_task_v2/auth/application/sign_in/sign_in_cubit.dart';
import 'package:pro_area_flutter_task_v2/auth/domain/auth_type.dart';
import 'package:pro_area_flutter_task_v2/settings/presentation/settings_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pro_area_flutter_task_v2/weather/presentation/weather_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return BlocListener<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          Get.to(() => WeatherPage(account: state.account));
        }
      },
      child: Scaffold(
        appBar: AppBar(title: Text(t.signUp), actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
            },
            icon: const Icon(Icons.settings),
          )
        ]),
        body: Container(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                t.screenDesc,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Image.asset(
                'assets/images/proarea_light_logo.jpg',
                scale: 2,
                width: 100,
              ),
              const Spacer(),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(t.welcome, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(t.loginSuggestion, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              const Spacer(),
              ElevatedButton.icon(
                onPressed: () {
                  context.read<SignInCubit>().login(AuthMethod.google);
                },
                label: Text(t.signWithGoogle),
                icon: const FaIcon(FontAwesomeIcons.google, color: Colors.red),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white, onPrimary: Colors.black, minimumSize: const Size(double.infinity, 50)),
              ),
              const SizedBox(height: 8),
              ElevatedButton.icon(
                onPressed: () {},
                label: Text(
                  t.signWithFacebook,
                  style: const TextStyle(color: Colors.white),
                ),
                icon: const FaIcon(FontAwesomeIcons.facebook, color: Colors.white),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue, onPrimary: Colors.black, minimumSize: const Size(double.infinity, 50)),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WeatherPage(account: null,)),
                  );
                },
                child: Text(
                  t.withoutAccount,
                  style: const TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white, onPrimary: Colors.black, minimumSize: const Size(double.infinity, 50)),
              ),
              const SizedBox(height: 40),
              RichText(
                text: TextSpan(
                  text: t.haveAccount,
                  style: const TextStyle(color: Colors.black87),
                  children: [
                    TextSpan(
                        text: t.login,
                        style: const TextStyle(
                            decoration: TextDecoration.underline, color: Colors.black, fontWeight: FontWeight.bold)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
