import 'package:flutter/material.dart';

AppBar appbar(String title){
  return AppBar(centerTitle: true,
  title: Text('$title'),
  );
}