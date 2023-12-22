// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apimodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiModel _$ApiModelFromJson(Map<String, dynamic> json) {
  return _ApiModel.fromJson(json);
}

/// @nodoc
mixin _$ApiModel {
  String get title => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  String get original_title => throw _privateConstructorUsedError;
  String get poster_path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiModelCopyWith<ApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiModelCopyWith<$Res> {
  factory $ApiModelCopyWith(ApiModel value, $Res Function(ApiModel) then) =
      _$ApiModelCopyWithImpl<$Res, ApiModel>;
  @useResult
  $Res call(
      {String title,
      String overview,
      String original_title,
      String poster_path});
}

/// @nodoc
class _$ApiModelCopyWithImpl<$Res, $Val extends ApiModel>
    implements $ApiModelCopyWith<$Res> {
  _$ApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? overview = null,
    Object? original_title = null,
    Object? poster_path = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      original_title: null == original_title
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String,
      poster_path: null == poster_path
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiModelImplCopyWith<$Res>
    implements $ApiModelCopyWith<$Res> {
  factory _$$ApiModelImplCopyWith(
          _$ApiModelImpl value, $Res Function(_$ApiModelImpl) then) =
      __$$ApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String overview,
      String original_title,
      String poster_path});
}

/// @nodoc
class __$$ApiModelImplCopyWithImpl<$Res>
    extends _$ApiModelCopyWithImpl<$Res, _$ApiModelImpl>
    implements _$$ApiModelImplCopyWith<$Res> {
  __$$ApiModelImplCopyWithImpl(
      _$ApiModelImpl _value, $Res Function(_$ApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? overview = null,
    Object? original_title = null,
    Object? poster_path = null,
  }) {
    return _then(_$ApiModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      original_title: null == original_title
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String,
      poster_path: null == poster_path
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiModelImpl implements _ApiModel {
  _$ApiModelImpl(
      {required this.title,
      required this.overview,
      required this.original_title,
      required this.poster_path});

  factory _$ApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiModelImplFromJson(json);

  @override
  final String title;
  @override
  final String overview;
  @override
  final String original_title;
  @override
  final String poster_path;

  @override
  String toString() {
    return 'ApiModel(title: $title, overview: $overview, original_title: $original_title, poster_path: $poster_path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.original_title, original_title) ||
                other.original_title == original_title) &&
            (identical(other.poster_path, poster_path) ||
                other.poster_path == poster_path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, overview, original_title, poster_path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiModelImplCopyWith<_$ApiModelImpl> get copyWith =>
      __$$ApiModelImplCopyWithImpl<_$ApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiModelImplToJson(
      this,
    );
  }
}

abstract class _ApiModel implements ApiModel {
  factory _ApiModel(
      {required final String title,
      required final String overview,
      required final String original_title,
      required final String poster_path}) = _$ApiModelImpl;

  factory _ApiModel.fromJson(Map<String, dynamic> json) =
      _$ApiModelImpl.fromJson;

  @override
  String get title;
  @override
  String get overview;
  @override
  String get original_title;
  @override
  String get poster_path;
  @override
  @JsonKey(ignore: true)
  _$$ApiModelImplCopyWith<_$ApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
