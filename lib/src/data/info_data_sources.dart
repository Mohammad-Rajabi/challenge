import 'package:challenge/src/data/models/response_upload_images/response_model.dart';
import 'package:image_compression_flutter/image_compression_flutter.dart';

abstract class InfoDataSource{
  Future<ResponseModel> postData(XFile image,String email,String pointUrl);
  Future<ResponseModel> getData();
}