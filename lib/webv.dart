import 'dart:io';
import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class WebViewApp extends StatefulWidget {
  @override
  WebViewAppState createState() => WebViewAppState();
}

class WebViewAppState extends State<WebViewApp> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/mollamartlogo.png',
            fit: BoxFit.cover), //Text('Molla Mart App'),
      ),
      body: WebView(
        initialUrl: 'https://mollamart.com/',
      ),
    );
  }
}
