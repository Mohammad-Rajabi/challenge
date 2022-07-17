// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseModel _$ResponseModelFromJson(Map<String, dynamic> json) {
  return _UploadImagesResponse.fromJson(json);
}

/// @nodoc
mixin _$ResponseModel {
  bool get isSuccess => throw _privateConstructorUsedError;
  String get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<UserInfoModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseModelCopyWith<ResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseModelCopyWith<$Res> {
  factory $ResponseModelCopyWith(
          ResponseModel value, $Res Function(ResponseModel) then) =
      _$ResponseModelCopyWithImpl<$Res>;
  $Res call(
      {bool isSuccess,
      String statusCode,
      String message,
      List<UserInfoModel> data});
}

/// @nodoc
class _$ResponseModelCopyWithImpl<$Res>
    implements $ResponseModelCopyWith<$Res> {
  _$ResponseModelCopyWithImpl(this._value, this._then);

  final ResponseModel _value;
  // ignore: unused_field
  final $Res Function(ResponseModel) _then;

  @override
  $Res call({
    Object? isSuccess = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserInfoModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_UploadImagesResponseCopyWith<$Res>
    implements $ResponseModelCopyWith<$Res> {
  factory _$$_UploadImagesResponseCopyWith(_$_UploadImagesResponse value,
          $Res Function(_$_UploadImagesResponse) then) =
      __$$_UploadImagesResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSuccess,
      String statusCode,
      String message,
      List<UserInfoModel> data});
}

/// @nodoc
class __$$_UploadImagesResponseCopyWithImpl<$Res>
    extends _$ResponseModelCopyWithImpl<$Res>
    implements _$$_UploadImagesResponseCopyWith<$Res> {
  __$$_UploadImagesResponseCopyWithImpl(_$_UploadImagesResponse _value,
      $Res Function(_$_UploadImagesResponse) _then)
      : super(_value, (v) => _then(v as _$_UploadImagesResponse));

  @override
  _$_UploadImagesResponse get _value => super._value as _$_UploadImagesResponse;

  @override
  $Res call({
    Object? isSuccess = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_UploadImagesResponse(
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserInfoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UploadImagesResponse implements _UploadImagesResponse {
  _$_UploadImagesResponse(
      {required this.isSuccess,
      required this.statusCode,
      required this.message,
      final List<UserInfoModel> data = const []})
      : _data = data;

  factory _$_UploadImagesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UploadImagesResponseFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String statusCode;
  @override
  final String message;
  final List<UserInfoModel> _data;
  @override
  @JsonKey()
  List<UserInfoModel> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ResponseModel(isSuccess: $isSuccess, statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadImagesResponse &&
            const DeepCollectionEquality().equals(other.isSuccess, isSuccess) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isSuccess),
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_UploadImagesResponseCopyWith<_$_UploadImagesResponse> get copyWith =>
      __$$_UploadImagesResponseCopyWithImpl<_$_UploadImagesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UploadImagesResponseToJson(
      this,
    );
  }
}

abstract class _UploadImagesResponse implements ResponseModel {
  factory _UploadImagesResponse(
      {required final bool isSuccess,
      required final String statusCode,
      required final String message,
      final List<UserInfoModel> data}) = _$_UploadImagesResponse;

  factory _UploadImagesResponse.fromJson(Map<String, dynamic> json) =
      _$_UploadImagesResponse.fromJson;

  @override
  bool get isSuccess;
  @override
  String get statusCode;
  @override
  String get message;
  @override
  List<UserInfoModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_UploadImagesResponseCopyWith<_$_UploadImagesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
