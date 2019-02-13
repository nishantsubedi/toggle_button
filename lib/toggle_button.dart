import 'package:flutter/material.dart';

enum ToggleButtonAlignment { verticle, horizontal }

class ToggleButton extends StatefulWidget {
  final double size;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color deactivatedColor;
  final ToggleButtonAlignment axis;
  final double borderRadius;
  final void Function(bool status) onChange;
  final bool initialVale;
  final List<BoxShadow> boxShadow;
  ToggleButton(
      {this.size: 15.0,
      this.backgroundColor: Colors.green,
      this.foregroundColor: Colors.white,
      this.axis: ToggleButtonAlignment.horizontal,
      this.borderRadius: 40.0,
      this.initialVale: false,
      this.deactivatedColor: Colors.grey,
      this.boxShadow: const [],
      this.onChange});

  @override
  State<StatefulWidget> createState() {
    return ToggleButtonState();
  }
}

class ToggleButtonState extends State<ToggleButton> {
  bool _active;
  double size;
  Color backgroundColor;
  Color foregroundColor;
  Color deactivatedColor;
  ToggleButtonAlignment axis;
  double borderRadius;
  bool initialVale;
  double width;
  double height;

  @override
  void initState() {
    super.initState();
    _active = widget.initialVale;
  }

  @override
  Widget build(BuildContext context) {
    if (axis == ToggleButtonAlignment.horizontal) {
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
                top: axis == ToggleButtonAlignment.horizontal
                    ? (0.0)
                    : (_active ? height - width : 0.0),
                left: axis == ToggleButtonAlignment.horizontal
                    ? (_active ? width - height : 0.0)
                    : (0.0),
                child: Container(
                  width: axis == ToggleButtonAlignment.horizontal
                      ? height - 2.0
                      : width - 2.0,
                  height: axis == ToggleButtonAlignment.horizontal
                      ? height - 2.0
                      : width - 2.0,
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
