import 'package:challenge/src/core/constants/http_constants.dart';
import 'package:challenge/src/core/services/http_client_service.dart';
import 'package:challenge/src/data/info_data_sources.dart';
import 'package:challenge/src/data/models/response_upload_images/response_model.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class RemoteInfoDataSource extends InfoDataSource {
  late HttpClientService _httpClientService;

  RemoteInfoDataSource({required HttpClientService httpClientService}) {
    _httpClientService = httpClientService;
  }

  @override
  Future<ResponseModel> getData() async{
    final dio =  _httpClientService.dio;
    final response = await dio.get(kGetSliderImagesEndPoint);
    ResponseModel responseModel = ResponseModel.fromJson(response.data);
    return responseModel;
  }

  @override
  Future<ResponseModel> postData(XFile image,String email,String pointUrl) async {
    late MultipartFile file;
    if(kIsWeb){
      final bytes = await image.readAsBytes();
        file = MultipartFile.fromBytes(bytes, filename: image.path.split('/').last);
    }
    else{
      file = await MultipartFile.fromFile(image.path,
          filename: image.path.split('/').last);
    }
    FormData formData = FormData.fromMap({
      "sliderImage":file ,
      "phoneNumber": "string",
      "email": email,
      "pointUrl": pointUrl,
      "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6"
    });
    final dio =  _httpClientService.dio;
    final response = await dio.post(kPostDataEndPoint, data: formData);
    ResponseModel responseModel =
        ResponseModel.fromJson(response.data);
    return responseModel;
  }
}
