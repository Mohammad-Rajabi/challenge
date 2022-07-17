import 'package:flutter/material.dart';
import 'main_desktop_view.dart';
import 'main_mobile_view.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth >= 600){
        return MainDesktopView();
      }
      else{
        return MainMobileView();
      }
    });
  }
}
