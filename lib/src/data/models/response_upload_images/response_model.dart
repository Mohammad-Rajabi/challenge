import 'package:challenge/src/data/models/user_info_model/user_info_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@freezed
class ResponseModel with _$ResponseModel{


  factory ResponseModel({
    required bool isSuccess,
    required String statusCode,
    required String message,
    @Default([]) List<UserInfoModel> data,
  })=_UploadImagesResponse;

  factory ResponseModel.fromJson(Map<String,dynamic> json)=> _$ResponseModelFromJson(json);
}