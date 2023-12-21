import 'package:counter_app/app/resources/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color borderColor;
  final double width;
  final double height;
  final VoidCallback buttonHandler;
  const CustomButton({
    super.key,
    required this.text,
    required this.borderColor,
    required this.buttonHandler,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: buttonGradientColor,
      ),
      child: MaterialButton(
        onPressed: buttonHandler,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
