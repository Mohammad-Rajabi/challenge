import 'package:challenge/src/core/constants/routes_constants.dart';
import 'package:challenge/src/views/screens/show_data/show_info_screen.dart';
import 'package:flutter/material.dart';

import '../views/screens/main/main_screen.dart';

class AppRoutes {

  static Route<dynamic> generateRoute(RouteSettings settings) {

    var route;

    switch (settings.name) {
      case kMainScreenRoute:
        route = MaterialPageRoute(builder: (_) =>  MainScreen());
        break;
      case kShowInfoScreenRoute:
        route = MaterialPageRoute(builder: (_) => ShowInfoScreen());
        break;
    }
    return route;
  }

}
