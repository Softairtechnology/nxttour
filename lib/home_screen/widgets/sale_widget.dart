import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:slide_countdown/slide_countdown.dart';

class Sale extends StatelessWidget {
  final Duration _duration = const Duration(hours: 4);

  const Sale({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Lottie.asset(
            'assets/animations/AnimationSale.json',
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
          const Text(
            'Flash Sale',
            style: TextStyle(
              color: Color(0xFF202020),
              fontSize: 21,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w700,
              letterSpacing: -0.21,
            ),
          ),
          Row(
            children: [
              Container(
                width: 17.10,
                height: 19.95,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/clock.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              Container(
                color: Colors.white,
                child: SlideCountdown(
                  duration: _duration,
                  slideDirection: SlideDirection.up,
                  separator: ':',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
