import 'package:flutter/widgets.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    required this.width,
    required this.height,
    required this.margin,
    required this.radius,
    required this.child,
    required this.bgColor,
    required this.onTap,
  });
  final double width;
  final double height;
  final EdgeInsets margin;
  final double radius;
  final Widget child;
  final Color bgColor;
  final Function() onTap;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: widget.margin,
        width: widget.width,
        height: widget.height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: widget.bgColor,
          borderRadius: BorderRadius.circular(widget.radius),
        ),
        child: widget.child,
      ),
    );
  }
}
