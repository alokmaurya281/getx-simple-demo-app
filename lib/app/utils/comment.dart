import 'package:flutter/material.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // double WIDTH = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        SizedBox(
          width: 200,
          height: 150,
          child: CustomPaint(
            painter: RPSCustomPainter(),
            child: const Center(
              child: Text('Hii'),
            ),
          ),
        ),
      ],
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7916667, size.height * 0.1666667);
    path_0.lineTo(size.width * 0.2083333, size.height * 0.1666667);
    path_0.arcToPoint(Offset(size.width * 0.1250000, size.height * 0.2500000),
        radius: Radius.elliptical(
            size.width * 0.08333333, size.height * 0.08333333),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.1250000, size.height * 0.6666667);
    path_0.arcToPoint(Offset(size.width * 0.2083333, size.height * 0.7500000),
        radius: Radius.elliptical(
            size.width * 0.08333333, size.height * 0.08333333),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.3411667, size.height * 0.7500000);
    path_0.cubicTo(
        size.width * 0.3828333,
        size.height * 0.7500000,
        size.width * 0.4166667,
        size.height * 0.7837917,
        size.width * 0.4166667,
        size.height * 0.8255000);
    path_0.cubicTo(
        size.width * 0.4166667,
        size.height * 0.8591667,
        size.width * 0.4573333,
        size.height * 0.8760000,
        size.width * 0.4811250,
        size.height * 0.8522083);
    path_0.lineTo(size.width * 0.5589167, size.height * 0.7744167);
    path_0.arcToPoint(Offset(size.width * 0.6178333, size.height * 0.7500000),
        radius: Radius.elliptical(
            size.width * 0.08333333, size.height * 0.08333333),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.7916667, size.height * 0.7500000);
    path_0.arcToPoint(Offset(size.width * 0.8750000, size.height * 0.6666667),
        radius: Radius.elliptical(
            size.width * 0.08333333, size.height * 0.08333333),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.8750000, size.height * 0.2500000);
    path_0.arcToPoint(Offset(size.width * 0.7916667, size.height * 0.1666667),
        radius: Radius.elliptical(
            size.width * 0.08333333, size.height * 0.08333333),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01;
    paint0Stroke.color = Colors.green.withOpacity(0.1);
    paint0Stroke.strokeCap = StrokeCap.round;
    paint0Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_0, paint0Stroke);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff000000).withOpacity(0.6);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
