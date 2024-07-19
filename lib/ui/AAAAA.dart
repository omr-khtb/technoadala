import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Runner')),
        body: const MyCustomWidget(),
      ),
    );
  }
}

class MyCustomWidget extends StatelessWidget {
  const MyCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double percentage = .7;

    return Center(
      child: CircularPercentIndicator(
        radius: 100,
        lineWidth: 15,
        animation: true,
        arcType: ArcType.FULL,
        percent: percentage,
        arcBackgroundColor: Colors.grey.withOpacity(0.3),
        circularStrokeCap: CircularStrokeCap.round,
        linearGradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
          colors: <Color>[Colors.green, Colors.orange, Colors.red],
          tileMode: TileMode.mirror,
        ),
        center: CircularPercentIndicator(
          radius: 80,
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
                      style:
                      TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
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
              TextButton(
                onPressed: () {},
                child: const Text(
                  'اضافة سعة +',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}