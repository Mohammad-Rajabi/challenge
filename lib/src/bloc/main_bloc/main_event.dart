part of 'main_bloc.dart';

abstract class MainEvent {}

class OnSelectMultipleImageEvent extends MainEvent {
  final List<XFile> images;

  OnSelectMultipleImageEvent(this.images);
}

class OnUploadMultipleImageEvent extends MainEvent {
  final List<XFile> images;
  final String pointUrl;
  final String email;
  GlobalKey<FormState> formKey;

  OnUploadMultipleImageEvent(
      {required this.images, required this.email, required this.pointUrl,required this.formKey});
}

class NavigateToShowInfoScreenEvent extends MainEvent {}
