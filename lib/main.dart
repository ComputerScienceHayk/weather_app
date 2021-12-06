import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/route_manager.dart';
import 'package:pro_area_flutter_task_v2/splash/presentation/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pro_area_flutter_task_v2/core/shared/service_locators.dart' as di;
import 'package:pro_area_flutter_task_v2/core/shared/service_locators.dart';
import 'package:pro_area_flutter_task_v2/settings/application/locale/locale_cubit.dart';
import 'package:pro_area_flutter_task_v2/weather/presentation/weather_page.dart';

import 'auth/application/auth/auth_bloc.dart';
import 'auth/application/sign_in/sign_in_cubit.dart';
import 'core/shared/l10n/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  FirebaseMessaging.onBackgroundMessage(firebaseMessageBackgroundHandler);

  await flutterLocalNotificationsPlugin
    .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
    ?.createNotificationChannel(channel);

  // TODO: add guardedZone after logging is set up
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(
            home: Splash(),
            debugShowCheckedModeBanner: false,
          );
        } else {
          // Loading is done, return the app:
          return MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => LocaleCubit()),
              BlocProvider(create: (context) => getIt<AuthBloc>()..add(WatchAuthChanges())),
              BlocProvider(create: (context) => getIt<SignInCubit>()),
            ],
            child: BlocBuilder<LocaleCubit, LocaleState>(
              builder: (context, state) {
                return GetMaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'WeatherAppDemo',
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                  ),
                  supportedLocales: L10n.all,
                  locale: state.locale,
                  localizationsDelegates: const [
                    AppLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate
                  ],
                  // home: LoginPage()
                  initialRoute: '/',
                  getPages: [
                    GetPage(
                      name: '/',
                      page: () => const WeatherPage(),
                    )
                  ],
                );
              },
            ),
          );
        }
      },
    );
  }
}
