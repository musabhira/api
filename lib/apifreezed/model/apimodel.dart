import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'apimodel.freezed.dart';
part 'apimodel.g.dart';

@freezed
class ApiModel with _$ApiModel {
  factory ApiModel({
    required String title,
    required String overview,
    required String original_title,
    required String poster_path,
  }) = _ApiModel;
  factory ApiModel.fromJson(Map<String, Object?> json) =>
      _$ApiModelFromJson(json);
}

ApiModel moviesFromJson(String str) {
  return ApiModel.fromJson(json.decode(str));
}
