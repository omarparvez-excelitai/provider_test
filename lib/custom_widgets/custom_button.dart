import 'package:flutter/cupertino.dart';

class CustomButton extends StatelessWidget {
  String? text;
  double? radius;
  double? top;
  double? bottom;
  double? left;
  double? right;
  Color? color;

  double? width;
  Function? press;

  CustomButton({
    Key? key,
    this.text,
    this.radius,
    this.width,
    this.top,
    this.right,
    this.bottom,
    this.left,
    this.press,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
