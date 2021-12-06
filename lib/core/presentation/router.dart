// import 'package:flutter/material.dart';
// import 'package:weather_app/auth/presentation/log_in_page.dart';
// import 'package:weather_app/settings/presentation/settings_page.dart';
// import 'package:weather_app/weather/presentation/weather_home_page.dart';

// class AppRouter {
//   static const String HOME = '/';
//   static const String LOGIN = '/login';
//   static const String SETTING = '/setting';
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case HOME:
//         return MaterialPageRoute(builder: (_) => WeatherHomePage());
//       case LOGIN:
//         return MaterialPageRoute(builder: (_) => LoginPage());
//       case SETTING:
//         return MaterialPageRoute(builder: (_) => SettingsPage());
//       default:
//         return MaterialPageRoute(
//           builder: (_) => Scaffold(
//             body: Center(
//               child: Text('No route defined for ${settings.name}'),
//             ),
//           ),
//         );
//     }
//   }
// }
