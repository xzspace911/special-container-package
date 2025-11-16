import 'package:flutter/material.dart';

/// A customizable container widget with optional height, width, border radius, color,
/// and shadow, displaying a centered child widget.
///
/// `SpecialContainer` is useful for creating card-like UI elements or blocks
/// that need consistent styling throughout your Flutter app.
class SpecialContainer extends StatelessWidget {
  /// Creates a [SpecialContainer].
  ///
  /// All parameters are optional. If not provided:
  /// - [height] defaults to 100
  /// - [width] defaults to full width
  /// - [radius] defaults to 10
  /// - [color] defaults to amber
  /// - [child] defaults to a centered Text widget
  const SpecialContainer({
    super.key,
    this.height,
    this.width,
    this.radius,
    this.color,
    this.child,
  });

  /// Height of the container. Defaults to 100 if null.
  final double? height;

  /// Width of the container. Defaults to maximum width if null.
  final double? width;

  /// Border radius of the container. Defaults to 10 if null.
  final double? radius;

  /// Background color of the container. Defaults to amber if null.
  final Color? color;

  /// Child widget displayed in the center. Defaults to a Text widget if null.
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 100,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: color ?? const Color.fromARGB(255, 29, 206, 200),
        borderRadius: BorderRadius.circular(radius ?? 10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            spreadRadius: 5,
            blurRadius: 4,
          ),
        ],
      ),
      child: Center(
        child: child ?? const Text('This is Special Container'),
      ),
    );
  }
}
