import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  OutlinedBorder? shape;
  Color? shadowColor;
  double? elevation;
  Widget child;
  VoidCallback voidCallback;

  ButtonComponent(
      {Key? key,
      required this.child,
      required this.voidCallback,
      OutlinedBorder? shape,
      Color? shadowColor,
      double? elevation})
      : super(key: key) {
    this.shape = shape;
    this.shadowColor = shadowColor;
    this.elevation = elevation;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shadowColor: shadowColor != null
            ? MaterialStateProperty.all(shadowColor)
            : MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: elevation != null
            ? MaterialStateProperty.all<double>(elevation!)
            : MaterialStateProperty.all<double>(4),
        shape: shape != null
            ? MaterialStateProperty.all<OutlinedBorder?>(shape)
            : MaterialStateProperty.all(
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              ),
      ),
      onPressed: voidCallback,
      child: child,
    );
  }
}
