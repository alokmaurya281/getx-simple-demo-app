import 'package:counter_app/app/utils/custom_button.dart';
import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  final String lottie;
  final String description;
  final VoidCallback retry;
  const EmptyPage(
      {super.key,
      required this.lottie,
      required this.description,
      required this.retry});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(lottie),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            CustomButton(
              text: 'Refresh',
              borderColor: Colors.black,
              buttonHandler: () {
                retry;
              },
              width: 200,
              height: 45,
            )
          ],
        ),
      ),
    );
  }
}
