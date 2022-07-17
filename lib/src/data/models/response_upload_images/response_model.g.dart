// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UploadImagesResponse _$$_UploadImagesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UploadImagesResponse(
      isSuccess: json['isSuccess'] as bool,
      statusCode: json['statusCode'] as String,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => UserInfoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UploadImagesResponseToJson(
        _$_UploadImagesResponse instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
