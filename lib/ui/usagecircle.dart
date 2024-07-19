import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomPercentIndicator extends StatelessWidget {
  final double percent;
  final Color color;

  CustomPercentIndicator({required this.percent, required this.color});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 141, // Width of the SVG image
          height: 119, // Height of the SVG image
          child: SvgPicture.string(
            '''
            <svg width="141" height="119" viewBox="0 0 141 119" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M114.723 115.749C117.029 118.121 120.844 118.19 123.01 115.689C130.703 106.808 136.053 96.1016 138.522 84.5477C141.409 71.0353 140.224 56.9703 135.118 44.1312C130.011 31.2922 121.212 20.2557 109.833 12.4175C98.454 4.57927 85.0063 0.291329 71.1903 0.0959054C57.3744 -0.0995182 43.8107 3.80636 32.2146 11.3196C20.6185 18.8328 11.5107 29.616 6.04303 42.3055C0.575341 54.995 -1.00669 69.0209 1.497 82.6095C4.00069 96.1981 10.4777 108.739 20.1088 118.647C13.1327 111.47 11.0907 86.9983 10.6874 80.9572C10.6271 80.0531 10.6432 79.1573 10.7337 78.2558C11.2297 73.3166 13.1878 56.0006 17.046 47.0465C21.576 36.5332 29.1218 27.5993 38.7293 21.3745C48.3367 15.1498 59.5743 11.9137 71.0209 12.0756C82.4675 12.2375 93.609 15.7901 103.037 22.2841C112.464 28.7781 119.754 37.9219 123.985 48.5591C128.216 59.1964 129.197 70.8493 126.805 82.0444C124.832 91.2799 120.636 99.8617 114.619 107.063C112.498 109.602 112.417 113.376 114.723 115.749V115.749Z" fill="#CDCDCD" fill-opacity="0.57"/>
            </svg>
            ''',
          ),
        ),
        Positioned(
          left: 10,
          child: Text(
            '${(percent * 100).toInt()}%',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Custom Percent Indicator')),
      body: Center(
        child: CustomPercentIndicator(
          percent: 0.7, // Input percent
          color: Colors.blue, // Color chosen by user
        ),
      ),
    ),
  ));
}
