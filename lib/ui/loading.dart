import 'package:flutter/material.dart';
import 'package:techno3adalaa/afterlogin.dart';
import 'package:techno3adalaa/main.dart';

class CustomLoadingIndicator extends StatefulWidget {
  final double width;
  final double height;
  final double durationInSeconds;

  const CustomLoadingIndicator({
    Key? key,
    this.width = 295,
    this.height = 12,
    this.durationInSeconds = 10,
  }) : super(key: key);

  @override
  _CustomLoadingIndicatorState createState() => _CustomLoadingIndicatorState();
}

class _CustomLoadingIndicatorState extends State<CustomLoadingIndicator> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.durationInSeconds.toInt()),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Navigate to login page after a delay
        Future.delayed(Duration(seconds: 0), () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>  MyApp()));
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Stack(
        children: [
          Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(widget.height / 2),
            ),
          ),
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Positioned(
                left: (_animation.value * (widget.width - widget.height)).toDouble(),
                child: Container(
                  width: (widget.width - widget.height),
                  height: widget.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(widget.height / 2),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}



// Example usage:
