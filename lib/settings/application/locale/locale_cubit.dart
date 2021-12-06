import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:pro_area_flutter_task_v2/core/shared/l10n/l10n.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  LocaleCubit() : super(LocaleState.initial());

  Locale? get locale => state.locale;

  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;
    emit(state.copyWith(locale: locale));
  }

  void clearLocale() {
    emit(state.copyWith(locale: null));
  }
}
