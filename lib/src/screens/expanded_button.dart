import 'package:flutter/material.dart';

class ExpandedButton extends StatelessWidget {
  const ExpandedButton(
      {Key? key,
      required this.onPressed,
      required this.child,})
      : super(key: key);
  final Widget child;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: TextButton(onPressed: onPressed, child: child),
    );
  }
}
