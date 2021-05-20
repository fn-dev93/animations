import 'package:coffe_app/src/widgets/slideshow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SlidesShowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Column(
          children: [
            Expanded(child: MiSlideShow()),
            Expanded(child: MiSlideShow())
            
          ],
        ));
  }
}

class MiSlideShow extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Slideshow(
      bulletPrimario: 15,
      bulletSecundario: 12,
      puntosArriba: false,
      colorPrimario: Colors.amber,
      colorSecundario: Colors.grey,
      slides: [
        SvgPicture.asset('assets/svgs/slive_1.svg'),
        SvgPicture.asset('assets/svgs/slive_2.svg'),
        SvgPicture.asset('assets/svgs/slive_3.svg'),
        SvgPicture.asset('assets/svgs/slive_4.svg'),
        SvgPicture.asset('assets/svgs/slive_5.svg'),
      ],
    );
  }
}
