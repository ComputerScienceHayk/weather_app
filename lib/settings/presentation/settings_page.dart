import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:pro_area_flutter_task_v2/core/shared/l10n/l10n.dart';
import 'package:pro_area_flutter_task_v2/settings/application/locale/locale_cubit.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(t.settingsPage),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(child: Text(t.languageChoice)),
            LocaleChoiceWidget(t: t),
          ],
        ),
      ),
    );
  }
}

class LocaleChoiceWidget extends StatelessWidget {
  const LocaleChoiceWidget({
    Key? key,
    required this.t,
  }) : super(key: key);

  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleCubit, LocaleState>(
      builder: (context, state) {
        return DropdownButton<Locale>(
          icon: const Icon(Icons.arrow_downward),
          value: state.locale ?? const Locale('en'),
          items: L10n.all.map((loc) {
            final flag = L10n.getFlag(loc.languageCode);
            return DropdownMenuItem(
              child: Row(
                children: [
                  Text(
                    flag,
                    style: const TextStyle(fontSize: 24),
                  ),
                  Text(loc.languageCode == 'en' ? t.en : t.ru),
                ],
              ),
              value: loc,
              onTap: () {
                context.read<LocaleCubit>().setLocale(loc);
              },
            );
          }).toList(),
          onChanged: (_) {},
        );
      },
    );
  }
}
