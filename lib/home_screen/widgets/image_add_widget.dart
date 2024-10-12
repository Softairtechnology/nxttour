import 'package:flutter/material.dart';

class ImageAdd extends StatelessWidget {
  const ImageAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Opacity(
          opacity: 1,
          child: Container(
            width: 392.36,
            height: 232,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/addviertise.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
