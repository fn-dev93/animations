import 'package:coffe_app/src/widgets/radial_progress.dart';
import 'package:flutter/material.dart';

class GraficasCircularePage extends StatefulWidget {
  @override
  _GraficasCircularePageState createState() => _GraficasCircularePageState();
}

class _GraficasCircularePageState extends State<GraficasCircularePage> {
  double porcentaje = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          onPressed: () {
            setState(() {
              porcentaje += 10;
              if (porcentaje > 100) {
                porcentaje = 0;
              }
            });
          },
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomRadialProgress(porcentaje: porcentaje, color: Colors.pink,),
                CustomRadialProgress(porcentaje: porcentaje, color: Colors.orange.shade600,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomRadialProgress(porcentaje: porcentaje, color: Colors.red.shade500,),
                CustomRadialProgress(porcentaje: porcentaje, color: Colors.green[900],),
              ],
            )
          ],
        ));
  }
}

class CustomRadialProgress extends StatelessWidget {
  final Color color;

  const CustomRadialProgress({
    @required this.porcentaje,
    @required this.color,
  });

  final double porcentaje;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 180,
        height: 180,
        child: RadialProgress(
            porcentaje: porcentaje,
            colorPrimario: color,
            colorSecundario: Colors.blue.shade800,
            grosorSecundario: 4,
            grosorPrimario: 12));
  }
}
