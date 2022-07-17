part of 'main_bloc.dart';


class MainState{
  final List<XFile>? images;
  bool isReachedMaxSize;
  bool isSendingData;
  bool wasUploadSuccessful;

  MainState(
      {this.images, this.isReachedMaxSize = false, this.isSendingData = false,this.wasUploadSuccessful = false});

  MainState copyWith(
          {List<XFile>? images, bool? isReachedMaxSize, bool? isSendingData,bool? wasUploadSuccessful}) =>
      MainState(
        images: images ?? this.images,
        isReachedMaxSize: isReachedMaxSize ?? this.isReachedMaxSize,
        isSendingData: isSendingData ?? this.isSendingData,
        wasUploadSuccessful: wasUploadSuccessful ?? this.wasUploadSuccessful,
      );
}

