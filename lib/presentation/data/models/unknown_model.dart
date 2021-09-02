import 'package:freezed_annotation/freezed_annotation.dart';

part 'unknown_model.freezed.dart';
part 'unknown_model.g.dart';

@freezed
class Unknown with _$Unknown {
  const factory Unknown({
    required int id,
    required String name,
    required int year,
    required String color,
  }) = _Unknown;

  factory Unknown.fromJson(Map<String, dynamic> json) =>
      _$UnknownFromJson(json);
}
