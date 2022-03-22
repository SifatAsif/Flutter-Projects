import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late WebViewController _controller;

  _goBack() async {
    if (await _controller.canGoBack()) {
      await _controller.goBack();
    }
  }

  _goForward() async {
    if (await _controller.canGoForward()) {
      await _controller.goForward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My youtube'),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: _goBack,
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: _goForward,
          ),
        ],
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: 'https://www.youtube.com/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webView) {
            _controller = webView;
          },
        ),
      ),
    );
  }
}
