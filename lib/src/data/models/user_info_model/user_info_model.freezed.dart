// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) {
  return _UserInfoModel.fromJson(json);
}

/// @nodoc
mixin _$UserInfoModel {
  String get pointUrl => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoModelCopyWith<UserInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoModelCopyWith<$Res> {
  factory $UserInfoModelCopyWith(
          UserInfoModel value, $Res Function(UserInfoModel) then) =
      _$UserInfoModelCopyWithImpl<$Res>;
  $Res call(
      {String pointUrl,
      String imageUrl,
      String phoneNumber,
      String email,
      String id});
}

/// @nodoc
class _$UserInfoModelCopyWithImpl<$Res>
    implements $UserInfoModelCopyWith<$Res> {
  _$UserInfoModelCopyWithImpl(this._value, this._then);

  final UserInfoModel _value;
  // ignore: unused_field
  final $Res Function(UserInfoModel) _then;

  @override
  $Res call({
    Object? pointUrl = freezed,
    Object? imageUrl = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      pointUrl: pointUrl == freezed
          ? _value.pointUrl
          : pointUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserInfoModelCopyWith<$Res>
    implements $UserInfoModelCopyWith<$Res> {
  factory _$$_UserInfoModelCopyWith(
          _$_UserInfoModel value, $Res Function(_$_UserInfoModel) then) =
      __$$_UserInfoModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String pointUrl,
      String imageUrl,
      String phoneNumber,
      String email,
      String id});
}

/// @nodoc
class __$$_UserInfoModelCopyWithImpl<$Res>
    extends _$UserInfoModelCopyWithImpl<$Res>
    implements _$$_UserInfoModelCopyWith<$Res> {
  __$$_UserInfoModelCopyWithImpl(
      _$_UserInfoModel _value, $Res Function(_$_UserInfoModel) _then)
      : super(_value, (v) => _then(v as _$_UserInfoModel));

  @override
  _$_UserInfoModel get _value => super._value as _$_UserInfoModel;

  @override
  $Res call({
    Object? pointUrl = freezed,
    Object? imageUrl = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_UserInfoModel(
      pointUrl: pointUrl == freezed
          ? _value.pointUrl
          : pointUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserInfoModel implements _UserInfoModel {
  _$_UserInfoModel(
      {required this.pointUrl,
      required this.imageUrl,
      required this.phoneNumber,
      required this.email,
      required this.id});

  factory _$_UserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserInfoModelFromJson(json);

  @override
  final String pointUrl;
  @override
  final String imageUrl;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final String id;

  @override
  String toString() {
    return 'UserInfoModel(pointUrl: $pointUrl, imageUrl: $imageUrl, phoneNumber: $phoneNumber, email: $email, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInfoModel &&
            const DeepCollectionEquality().equals(other.pointUrl, pointUrl) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pointUrl),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_UserInfoModelCopyWith<_$_UserInfoModel> get copyWith =>
      __$$_UserInfoModelCopyWithImpl<_$_UserInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInfoModelToJson(
      this,
    );
  }
}

abstract class _UserInfoModel implements UserInfoModel {
  factory _UserInfoModel(
      {required final String pointUrl,
      required final String imageUrl,
      required final String phoneNumber,
      required final String email,
      required final String id}) = _$_UserInfoModel;

  factory _UserInfoModel.fromJson(Map<String, dynamic> json) =
      _$_UserInfoModel.fromJson;

  @override
  String get pointUrl;
  @override
  String get imageUrl;
  @override
  String get phoneNumber;
  @override
  String get email;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_UserInfoModelCopyWith<_$_UserInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
