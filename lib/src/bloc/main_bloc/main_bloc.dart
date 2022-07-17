import 'dart:async';
import 'dart:io';

// import 'dart:html' as webFile;
import 'dart:typed_data';

import 'package:challenge/src/data/info_data_sources.dart';
import 'package:challenge/src/data/models/response_upload_images/response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_compression_flutter/image_compression_flutter.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

part 'main_event.dart';

part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  InfoDataSource infoDataSource;

  MainBloc({required this.infoDataSource}) : super(MainState()) {
    on<OnSelectMultipleImageEvent>(_onSelected);
    on<OnUploadMultipleImageEvent>(_onUploaded);
    on<NavigateToShowInfoScreenEvent>(_onNavigate);
  }

  FutureOr<void> _onSelected(
      OnSelectMultipleImageEvent event, Emitter<MainState> emit) {
    double sizeInMb = 0;
    for (XFile image in event.images) {
      Uint8List imageBytes = getSizeInBytes(image);
      sizeInMb += imageBytes.lengthInBytes / (1024 * 1024);
    }
    if (sizeInMb >= 5) {
      emit(state.copyWith(isReachedMaxSize: true));
    }

    emit(state.copyWith(images: event.images));
  }

  FutureOr<void> _onUploaded(
      OnUploadMultipleImageEvent event, Emitter<MainState> emit) async {
    late ResponseModel response;
    if (event.formKey.currentState!.validate()) {
      emit(state.copyWith(isSendingData: true));
      for (var image in event.images) {
        response =
            await infoDataSource.postData(image, event.email, event.pointUrl);
      }
      emit(state.copyWith(isSendingData: false, images: []));
      if (response.isSuccess) {
        add(NavigateToShowInfoScreenEvent());
      }
    }
  }

  Uint8List getSizeInBytes(XFile image) {
    File file = File(image.path);
    return file.readAsBytesSync();
  }

  _onNavigate(NavigateToShowInfoScreenEvent event, Emitter<MainState> emit) {
    emit(state.copyWith(wasUploadSuccessful: true));
  }
}
