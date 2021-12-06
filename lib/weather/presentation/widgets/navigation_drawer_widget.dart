import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:provider/src/provider.dart';
import 'package:pro_area_flutter_task_v2/auth/application/sign_in/sign_in_cubit.dart';
import 'package:pro_area_flutter_task_v2/auth/domain/account.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pro_area_flutter_task_v2/auth/presentation/log_in_page.dart';
import 'package:pro_area_flutter_task_v2/settings/presentation/settings_page.dart';

import '../weather_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final Account? account;
  const NavigationDrawerWidget({required this.account, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Drawer(
      child: ListView(
        children: [
          account != null
              ? _buildHeader(
                  name: account!.username,
                  email: account!.email ?? '',
                  imageUrl: account!.photo,
                  onClicked: () => Get.to(const WeatherPage()),
                )
              : Container(),
          const SizedBox(height: 30),
          Column(
            children: [
              Text(t.languageChoice),
              LocaleChoiceWidget(t: t),
            ],
          ),
          const SizedBox(height: 30),
          Divider(color: Colors.blueGrey.shade200),
          const SizedBox(height: 30),
          account != null
              ? ElevatedButton(
                  onPressed: () {
                    context.read<SignInCubit>().logout();
                    Get.off(() => const LoginPage());
                  },
                  child: Text(
                    t.logout,
                    style: const TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white70, onPrimary: Colors.black, minimumSize: const Size(double.infinity, 50)),
                )
              : ElevatedButton(
                  onPressed: () {
                    // Get.off(() => const LoginPage());
                  },
                  child: Text(
                    t.signInWithAccount,
                    style: const TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white70, onPrimary: Colors.black, minimumSize: const Size(double.infinity, 50)),
                ),
        ],
      ),
    );
  }
}

Widget _buildHeader({
  required String name,
  required String email,
  String? imageUrl,
  VoidCallback? onClicked,
}) =>
    DrawerHeader(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          imageUrl != null
              ? CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(imageUrl),
                )
              : CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.yellow,
                  child: Text(
                    name[0],
                    style: const TextStyle(fontSize: 40),
                  ),
                ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name, style: const TextStyle(fontSize: 18, color: Colors.black)),
              InkWell(
                onTap: onClicked,
                child: const Icon(Icons.manage_accounts),
              )
            ],
          ),
          const SizedBox(height: 4),
          Text(email, style: const TextStyle(fontSize: 12, color: Colors.black)),
          const Spacer(),
        ],
      ),
    );
