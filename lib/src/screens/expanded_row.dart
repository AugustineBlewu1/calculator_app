import 'package:flutter/material.dart';

class ExpandedRow extends StatelessWidget {
  const ExpandedRow({Key? key, required this.children, required this.crossAxisAlignment})
      : super(key: key);
  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: children,
        crossAxisAlignment: crossAxisAlignment,
      ),
    );
  }
}
