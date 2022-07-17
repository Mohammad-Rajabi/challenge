
import 'package:challenge/src/data/info_data_sources.dart';
import 'package:challenge/src/data/models/response_upload_images/response_model.dart';
import 'package:challenge/src/data/models/user_info_model/user_info_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'show_info_event.dart';
part 'show_info_state.dart';

class ShowInfoBloc extends Bloc<ShowInfoEvent, ShowInfoState> {
  InfoDataSource infoDataSource;

  ShowInfoBloc({required this.infoDataSource}) : super(ShowInfoLoading()) {
    on<ShowInfoStarted>(_onStarted);
    on<ShowInfoListItemClicked>(_onClicked);
  }
  _onStarted(ShowInfoStarted event, Emitter<ShowInfoState> emit) async{
    emit(ShowInfoLoading());
    ResponseModel response = await infoDataSource.getData();
    emit(ShowInfoSuccess(userInfoList: response.data));
  }

   _onClicked(ShowInfoListItemClicked event, Emitter<ShowInfoState> emit) {
    emit(ListItemShowImageUrl(imagePointUrl: event.imagePointUrl));
  }
}
