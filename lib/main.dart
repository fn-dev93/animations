import 'package:flutter/material.dart';

// import 'package:coffe_app/src/labs/circular_prograss_page.dart';
// import 'package:coffe_app/src/pages/headers_page.dart';
// import 'package:coffe_app/src/labs/slideshow_page.dart';
// import 'src/pages/graficas_circulares_page.dart';

import 'package:coffe_app/src/pages/slideshow_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños app',
      home: SlidesShowPage()
    );
  }
}
