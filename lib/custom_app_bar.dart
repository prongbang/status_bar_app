import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final bool dark;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const CustomAppBar({
    Key? key,
    required this.title,
    this.dark = true,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: const TextStyle(color: Colors.black)),
      backgroundColor: backgroundColor,
      systemOverlayStyle: SystemUiOverlayStyle(
        // For Android
        statusBarIconBrightness: dark ? Brightness.light : Brightness.dark,
        // For iOS
        statusBarBrightness: dark ? Brightness.light : Brightness.dark,
      ),
    );
  }
}
