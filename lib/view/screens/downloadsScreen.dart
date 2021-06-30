import 'package:flutter/material.dart';
import 'package:library_app/view/widgets/primaryText.dart';

class DownloadsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: PrimaryText(text: 'DownLoads'),
        ),
      ),
    );
  }
}
