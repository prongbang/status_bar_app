import 'package:flutter/material.dart';
import 'package:status_bar_app/status_bar_overlay.dart';

class WithoutAppBarPage extends StatelessWidget {
  const WithoutAppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const StatusBarOverlay(
      dark: false,
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: SizedBox(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text('APP BAR'),
            ),
          ),
        ),
      ),
    );
  }
}
