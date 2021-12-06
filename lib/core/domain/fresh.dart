import 'package:freezed_annotation/freezed_annotation.dart';
part 'fresh.freezed.dart';

@freezed
class Fresh<T> with _$Fresh<T> {
  //since it needs to hold some data, we need to make it Generic with <T>
  const Fresh._();
  const factory Fresh({
    required T entity,
    required bool isFresh,
  }) = _Fresh<T>;

  factory Fresh.yes(T entity) => Fresh(
        entity: entity,
        isFresh: true,
      );

  factory Fresh.no(T entity) => Fresh(
        entity: entity,
        isFresh: false,
      );
}
