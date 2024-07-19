// custom_circular_indicator.dart
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CustomCircularIndicator extends StatelessWidget {
  final double percentage;

  const CustomCircularIndicator({Key? key, required this.percentage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularPercentIndicator(
        radius: 90,
        lineWidth: 15,
        animation: true,
        arcType: ArcType.FULL,
        percent: percentage,
        arcBackgroundColor: Colors.grey.withOpacity(0.3),
        circularStrokeCap: CircularStrokeCap.round,
        linearGradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
          colors: <Color>[Colors.green,Colors.green,Colors.green,Colors.yellow,Colors.orange,Colors.red],
        ),
        center: CircularPercentIndicator(
          radius: 70,
          lineWidth: 12,
          animation: true,
          arcType: ArcType.FULL,
          percent: percentage,
          arcBackgroundColor: Colors.grey.withOpacity(0.3),
          circularStrokeCap: CircularStrokeCap.round,
          linearGradient: const LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Colors.grey, Colors.blueGrey, Colors.black],
            tileMode: TileMode.mirror,
          ),
          center: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'المتداول',
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const Text(
                '\$xx of \$xx',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'الارشيف',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Text(
                '\$xx of \$xx',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
