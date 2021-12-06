import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:intl/intl.dart';
import 'package:pro_area_flutter_task_v2/auth/application/auth/auth_bloc.dart';
import 'package:pro_area_flutter_task_v2/auth/domain/account.dart';
import 'package:pro_area_flutter_task_v2/auth/presentation/log_in_page.dart';
import 'package:pro_area_flutter_task_v2/core/domain/fresh.dart';
import 'package:pro_area_flutter_task_v2/core/presentation/toast.dart';
import 'package:pro_area_flutter_task_v2/core/shared/service_locators.dart';
import 'package:pro_area_flutter_task_v2/settings/application/locale/locale_cubit.dart';
import 'package:pro_area_flutter_task_v2/weather/application/location_cubit/location_cubit.dart';
import 'package:pro_area_flutter_task_v2/weather/application/weather_cubit/weather_cubit.dart';
import 'package:pro_area_flutter_task_v2/weather/domain/weather.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WeatherPage extends StatefulWidget {

  const WeatherPage({Key? key,  Account? account}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<LocationCubit>()),
        BlocProvider(create: (context) => getIt<WeatherCubit>()..getWeather(t.localeName)),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is NotAuthenticated) {
                Get.off(() => const LoginPage());
              }
            },
          ),
          BlocListener<LocaleCubit, LocaleState>(
            listener: (context, state) {
              context.read<WeatherCubit>().getWeather(state.locale!.languageCode);
            },
            child: Container(),
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            title: BlocBuilder<WeatherCubit, WeatherState>(
              builder: (context, state) {
                return state.maybeWhen(
                  success: (_) => Text(_.entity.location),
                  orElse: () => Text(t.locationLoading),
                );
              },
            ),
            actions: [
              DropdownButton<int>(
                value: selectedValue,
                items: [
                  DropdownMenuItem(
                    child: Text(t.daily),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text(t.hourly),
                    value: 2,
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    selectedValue = value!;
                  });
                },
              )
            ],
          ),
          body: MultiBlocListener(
            listeners: [
              BlocListener<LocationCubit, LocationState>(
                listener: (context, state) {
                  state.maybeWhen(
                    failure: (_) {
                      String msg(String failureReason) => t.locationFailureReason;
                      // "As determinig location failed due to , default location as Kiev is being shown";
                      _.when(
                        locationDisabled: (_) => showToast(msg(t.locationDisabled), context), //location disabled
                        denied: (_) => showToast(msg(t.locationDenied), context),
                        deniedForever: (_) => showToast(msg(t.locationPermDisabled), context),
                      );
                    },
                    orElse: () {},
                  );
                },
              ),
              BlocListener<WeatherCubit, WeatherState>(
                listener: (context, state) {
                  state.maybeWhen(
                    success: (weather) {
                      if (weather.isFresh == false) {
                        showToast(t.notOnline, context);
                        //You're not online. Some information may be outdated.
                      }
                    },
                    orElse: () {},
                  );
                },
              ),
            ],
            child: BlocBuilder<WeatherCubit, WeatherState>(builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Container(),
                loading: () => const Center(child: CircularProgressIndicator()),
                failure: (failure) => Text(failure.toString()),
                success: (weather) {
                  if (selectedValue == 1) {
                    return _dailyWeatherInfo(weather);
                  } else {
                    return _hourlyWeatherInfo(weather);
                  }
                },
              );
            }),
          ),
        ),
      ),
    );
  }

  ListView _hourlyWeatherInfo(Fresh<Weather> weather) {
    final t = AppLocalizations.of(context)!;
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: weather.entity.hourly.length,
      itemBuilder: (BuildContext context, int index) {
        final hour = weather.entity.hourly[index];
        return Card(
          elevation: 5.0,
          color: Theme.of(context).cardColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: (Theme.of(context).textTheme.headline1!.color)!,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                border: Border.all(color: Theme.of(context).primaryColor)),
            child: ExpansionTile(
              leading: Column(
                children: [
                  Text(DateFormat('EEE', t.localeName).format(hour.hourDateTime)),
                  Text(DateFormat('Hm', t.localeName).format(hour.hourDateTime)),
                ],
              ),
              title: Text('${hour.temp.celsius.ceil().toString()}°C'),
              trailing: Column(
                children: [
                  Text(hour.weatherInfo[0].main.toString()),
                  const Icon(Icons.arrow_drop_down),
                ],
              ),
              children: [
                Text(hour.weatherInfo[0].description.toString()),
                // Text(hour.weatherInfo[0].toString()),
              ],
            ),
          ),
        );
      },
    );
  }

  ListView _dailyWeatherInfo(Fresh<Weather> weather) {
    final t = AppLocalizations.of(context)!;
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: weather.entity.daily.length,
      itemBuilder: (BuildContext context, int index) {
        final day = weather.entity.daily[index];
        return Card(
          elevation: 5.0,
          color: Theme.of(context).cardColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: (Theme.of(context).textTheme.headline1!.color)!,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                border: Border.all(color: Theme.of(context).primaryColor)),
            child: ExpansionTile(
              leading: Column(
                children: [
                  Text(DateFormat('MMMd', t.localeName).format(day.dayDateTime)),
                  Text(DateFormat('EEE', t.localeName).format(day.dayDateTime)),
                ],
              ),
              // key: PageStorageKey(fio),
              title: Row(
                children: [
                  Text('${day.temp.day.celsius.ceil().toString()}°C   '),
                  // Text('${day.weatherInfo[0].icon}'),
                ],
              ),
              trailing: Column(
                children: [
                  Text(day.weatherInfo[0].main.toString()),
                  const Icon(Icons.arrow_drop_down),
                ],
              ),
              children: [
                Text(day.weatherInfo[0].description.toString()),
                Text('${t.humidity} - ${day.humidity.toString()}'),
                Text('${t.windSpeed} - ${day.windSpeed.toString()}'),
              ],
            ),
          ),
        );
      },
    );
  }
}
