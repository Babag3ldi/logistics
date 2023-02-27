import 'package:flutter/material.dart';
import 'package:logistics/drawer.dart';
import 'package:logistics/main.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'model.dart';

class Transports extends StatelessWidget {

 
       WebViewController controller = WebViewController()
  // ..setJavaScriptMode(JavaScriptMode.unrestricted)
   ..setBackgroundColor(const Color(0x00000000))
  // ..setNavigationDelegate(
  //   NavigationDelegate(
  //     onProgress: (int progress) {
  //       // Update loading bar.
  //     },
  //     // onPageStarted: (String url) {},
  //     // onPageFinished: (String url) {},
  //     // onWebResourceError: (WebResourceError error) {},
  //     onNavigationRequest: (NavigationRequest request) {
  //       if (request.url.startsWith('https://www.youtube.com/')) {
  //         return NavigationDecision.prevent;
  //       }
  //       return NavigationDecision.navigate;
  //     },
  //   ),
  // )
  ..loadRequest(Uri.parse('https://www.descartes.com/industries/transportation-and-logistics'));
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: '1d2225'.toColor(),
        title: Text("Transportation & Logistics"),
      ),
      drawer: Drawer1(),
      body:  WebViewWidget(
        controller: controller,
      ),
    );
  }
}