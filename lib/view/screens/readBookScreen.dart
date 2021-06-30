import 'package:flutter/material.dart';


/// Represents Homepage for Navigation
class ReadBookScreen extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<ReadBookScreen> {
  //final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Syncfusion Flutter PDF Viewer'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.bookmark,
              color: Colors.white,
            ),
            onPressed: () {
           //   _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      // body: SafeArea(
      //   child: SfPdfViewer.network(
      //     'https://scholar.najah.edu/sites/default/files/all-thesis/autobiography_hakeem_literature.pdf',
      //     key: _pdfViewerKey,
      //   ),
      // ),
    );
  }
}
