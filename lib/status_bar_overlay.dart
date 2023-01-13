import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusBarOverlay extends StatelessWidget {
  final Widget child;
  final bool dark;

  const StatusBarOverlay({
    Key? key,
    required this.child,
    this.dark = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: dark ? SystemUiOverlayStyle.dark : SystemUiOverlayStyle.light,
      child: child,
    );
  }
}
