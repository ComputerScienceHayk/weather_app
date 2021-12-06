part of 'locale_cubit.dart';

class LocaleState extends Equatable {

  final Locale? _locale;
  const LocaleState([this._locale]);
  Locale? get locale => _locale;
  factory LocaleState.initial() => const LocaleState();

  LocaleState copyWith({Locale? locale}) => LocaleState(locale ?? _locale);

  @override
  List<Object> get props => [_locale ?? const Locale('en')];
}
