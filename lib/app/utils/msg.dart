import 'package:flutter/material.dart';

class Msgcard extends StatelessWidget {
  const Msgcard({super.key});

  @override
  Widget build(BuildContext context) {
//Add this CustomPaint widget to the Widget Tree
    return SizedBox(
      width: 200,
      height: 150,
      child: CustomPaint(
        size: const Size(100, 100),
        painter: RPSCustomPainter(),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(2, 0);
    path_0.arcToPoint(const Offset(0, 2),
        radius: const Radius.elliptical(2, 2),
        rotation: 90,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(0, 10);
    path_0.arcToPoint(const Offset(2, 12),
        radius: const Radius.elliptical(2, 2),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(4.5, 12);
    path_0.arcToPoint(const Offset(5.3, 12.4),
        radius: const Radius.elliptical(1, 1),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(7.199999999999999, 14.933);
    path_0.arcToPoint(const Offset(8.799999999999999, 14.933),
        radius: const Radius.elliptical(1, 1),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(10.7, 12.4);
    path_0.arcToPoint(const Offset(11.5, 12),
        radius: const Radius.elliptical(1, 1),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(14, 12);
    path_0.arcToPoint(const Offset(16, 10),
        radius: const Radius.elliptical(2, 2),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(16, 2);
    path_0.arcToPoint(const Offset(14, 0),
        radius: const Radius.elliptical(2, 2),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(2, 0);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
