import 'package:flutter/material.dart';
import 'package:status_bar_app/custom_app_bar.dart';

class WithAppBarPage extends StatelessWidget {
  const WithAppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'APP BAR',
      ),
      body: Container(),
    );
  }
}
