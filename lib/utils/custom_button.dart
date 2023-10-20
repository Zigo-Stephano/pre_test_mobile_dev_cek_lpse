import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? action;
  final Widget content;
  final double? width;
  final double? paddingVertical;
  final double? paddingHorizontal;
  final double? radius;
  final Color? color;
  const CustomButton({
    super.key,
    required this.action,
    required this.content,
    this.width,
    this.color,
    this.paddingVertical,
    this.paddingHorizontal,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 8),
          ),
        ),
        onPressed: action,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: paddingVertical ?? 0,
            horizontal: paddingHorizontal ?? 0,
          ),
          child: content,
        ),
      ),
    );
  }
}
