import 'package:flutter/material.dart';

class ToggleButtonAlignment {
  static int verticle = 1011;
  static int horizontal = 1010;
}

class ToggleButton extends StatefulWidget {
  double size;
  Color backgroundColor;
  Color foregroundColor;
  Color deactivatedColor;
  int axis;
  double borderRadius;
  void Function(bool status) onChange;
  bool initialVale;
  List<BoxShadow> boxShadow = [];
  ToggleButton(
      {this.size,
      this.backgroundColor,
      this.foregroundColor,
      this.axis,
      this.borderRadius,
      this.initialVale,
      this.deactivatedColor,
      this.boxShadow,
      this.onChange});

  @override
  State<StatefulWidget> createState() {
    return ToggleButtonState();
  }
}

class ToggleButtonState extends State<ToggleButton> {
  bool _active = false;
  double size;
  Color backgroundColor;
  Color foregroundColor;
  Color deactivatedColor;
  int axis;
  double borderRadius;
  bool initialVale;
  double width;
  double height;

  void start() {
    if (widget.size != null)
      size = widget.size;
    else
      size = 15.0;
    if (widget.axis != null)
      axis = widget.axis;
    else
      axis = 1010;
    if (widget.backgroundColor != null)
      backgroundColor = widget.backgroundColor;
    else
      backgroundColor = Colors.green;

    if (widget.foregroundColor != null)
      foregroundColor = widget.foregroundColor;
    else
      foregroundColor = Colors.white;

    if (widget.initialVale != null)
      _active = widget.initialVale;
    

    if (widget.borderRadius != null)
      borderRadius = widget.borderRadius;
    else
      borderRadius = 40.0;

    if (widget.deactivatedColor != null)
      deactivatedColor = widget.deactivatedColor;
    else
      deactivatedColor = Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
   start();
    if (axis == 1010) {
      width = size * 5.0;
      height = size * 2.0;
    } else {
      height = size * 5.0;
      width = size * 2.0;
    }
    return GestureDetector(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: _active ? backgroundColor : deactivatedColor,
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: widget.boxShadow),
        child: Stack(
          children: <Widget>[
            Positioned(
                top: axis == 1010 ? (0.0) : (_active ? height - width : 0.0),
                left: axis == 1010 ? (_active ? width - height : 0.0) : (0.0),
                child: Container(
                  width: axis == 1010 ? height - 2.0 : width - 2.0,
                  height: axis == 1010 ? height - 2.0 : width - 2.0,
                  margin: EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                      color: foregroundColor,
                      borderRadius: BorderRadius.circular(borderRadius)),
                ))
          ],
        ),
      ),
      onTap: () {
        setState(() {
          _active = !_active;
        });
        if (widget.onChange != null) {
          widget.onChange(_active);
        }
      },
    );
  }
}
