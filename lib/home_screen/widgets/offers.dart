import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 391.95,
      height: 171.72,
      child: Stack(
        children: [
          Container(
            color: Colors.blue[50],
          ),
          Positioned.fill(
            right: 220.00,
            left: 0,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background_image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 197.34,
            top: 22.56,
            child: Text(
              'CHOOSE YOUR LOOK',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.05,
                fontFamily: 'Oswald',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Positioned(
            left: 197.54,
            top: 74.78,
            child: Text(
              'See our clothing collections',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.53,
                fontFamily: 'Roboto Light',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            left: 197.62,
            top: 107.79,
            child: InkWell(
              onTap: () {
                print('See Offers button tapped!');
              },
              child: Container(
                width: 114.22,
                height: 40.11,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'SEE OFFERS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.53,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.63,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
