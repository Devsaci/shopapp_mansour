import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  late String url;

  WebViewScreen(this.url, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('WebView Screen'),
      ),
      // ignore: prefer_const_constructors
      body: WebView(
        initialUrl: url,
      ),
    );
  }
}
