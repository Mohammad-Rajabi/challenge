part of 'show_info_bloc.dart';

 class ShowInfoState extends Equatable {
  List<UserInfoModel>? userInfoList;

  ShowInfoState({this.userInfoList});

  @override
  List<Object> get props => [];
}

class ShowInfoLoading extends ShowInfoState {}

class ShowInfoSuccess extends ShowInfoState {
  ShowInfoSuccess({required List<UserInfoModel> userInfoList}):super(userInfoList: userInfoList);

}

class ListItemShowImageUrl extends ShowInfoState {
 String imagePointUrl;

 ListItemShowImageUrl({required this.imagePointUrl});
}
