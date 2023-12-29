import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class CustomMessageCard extends StatelessWidget {
  const CustomMessageCard({super.key});

  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Card(
    //     elevation: 5.0,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(8.0),
    //     ),
    //     child: Stack(
    //       children: [
    //         const Padding(
    //           padding: EdgeInsets.all(8.0),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(
    //                 'Alok Marya',
    //                 style: TextStyle(
    //                   fontWeight: FontWeight.bold,
    //                   fontSize: 16.0,
    //                 ),
    //               ),
    //               SizedBox(height: 4.0),
    //               Text(
    //                 'Hello, how are you?',
    //                 style: TextStyle(fontSize: 14.0),
    //               ),
    //               SizedBox(height: 8.0),
    //               Align(
    //                 alignment: Alignment.bottomRight,
    //                 child: Text(
    //                   '12:34 PM',
    //                   style: TextStyle(
    //                     fontSize: 12.0,
    //                     color: Colors.grey,
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         Positioned(
    //           top: 0,
    //           right: -20,
    //           child: Container(
    //             padding:
    //                 const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
    //             decoration: const BoxDecoration(
    //               color: Colors.blue,
    //               borderRadius: BorderRadius.only(
    //                 topRight: Radius.circular(8.0),
    //                 bottomLeft: Radius.circular(8.0),
    //               ),
    //             ),
    //             child: const Text(
    //               'NEW',
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 12.0,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ClipPath(
        clipper: UpperNipMessageClipperTwo(
          MessageType.receive,
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.green,
          ),
          child: const Text(
            'Hii How are your',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
