
import '../constants/general_constants.dart';

String? urlValidator(String? value){
  if(value!.isEmpty) return 'required';
  if(!urlRegex.hasMatch(value)) {
    return 'url address is invalid';
  } else {
    return null;
  }
}

String? emailValidator(String? value){
  if(value!.isEmpty) return 'required';
  if(!emailRegex.hasMatch(value)) {
    return 'email address is invalid';
  } else {
    return null;
  }
}