import 'package:flutter/material.dart';
import 'package:library_app/view/widgets/primaryText.dart';

class LibraryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PrimaryText(
        text: "Library Screen",
      ),
    );
  }
}
