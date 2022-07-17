part of 'show_info_bloc.dart';

abstract class ShowInfoEvent {}

class ShowInfoStarted extends ShowInfoEvent {}

class ShowInfoListItemClicked extends ShowInfoEvent {
  String imagePointUrl;

  ShowInfoListItemClicked({required this.imagePointUrl});
}
