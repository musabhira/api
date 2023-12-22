// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apimodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiModelImpl _$$ApiModelImplFromJson(Map<String, dynamic> json) =>
    _$ApiModelImpl(
      title: json['title'] as String,
      overview: json['overview'] as String,
      original_title: json['original_title'] as String,
      poster_path: json['poster_path'] as String,
    );

Map<String, dynamic> _$$ApiModelImplToJson(_$ApiModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'overview': instance.overview,
      'original_title': instance.original_title,
      'poster_path': instance.poster_path,
    };
