import 'package:flutter/material.dart';

class Summer extends StatelessWidget {
  const Summer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 393,
          height: 636.53,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Summer_back.png'),
              // Add your background image here
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 70,
          top: 39,
          child: SizedBox(
            width: 250.64,
            height: 267.81,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 15.77,
                  child: Container(
                    width: 150.37,
                    height: 235.90,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/girl2.png'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 31.05,
                          offset: Offset(12.94, 12.94),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 81.88,
                  top: 0,
                  child: Container(
                    width: 168.76,
                    height: 267.81,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/girl1.png'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 31.05,
                          offset: Offset(12.94, 12.94),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          left: 17.19,
          top: 331.20,
          child: SizedBox(
            width: 358.61,
            height: 145.84,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'SUMMER SALE GET 30% OFF ON ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 41.40,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: 'ALL APPARELS.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 41.40,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Positioned(
          left: 126.50,
          top: 500.16,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              side: const BorderSide(width: 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
              padding: EdgeInsets.zero,
            ),
            onPressed: () {},
            child: const SizedBox(
              width: 141.23,
              height: 53.04,
              child: Center(
                child: Text(
                  'SHOP NOW',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.11,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.65,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 17.19,
          top: 569.25,
          child: Container(
            width: 50.35,
            height: 53.04,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.9),
              borderRadius: BorderRadius.circular(4),
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_rounded,
                  color: Colors.white),
              onPressed: () {},
            ),
          ),
        ),
        Positioned(
          right: 17.19,
          top: 569.25,
          child: Transform.rotate(
            angle: -3.14, // Rotate 180 degrees to make it point right
            child: Container(
              width: 50.35,
              height: 53.04,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.9),
                borderRadius: BorderRadius.circular(4),
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded,
                    color: Colors.white),
                onPressed: () {},
              ),
            ),
          ),
        ),
        Positioned(
          left: 180.36,
          top: 588,
          child: Row(
            children: [
              Container(
                width: 5.70,
                height: 6,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 7.59),
              Container(
                width: 5.70,
                height: 6,
                decoration: const BoxDecoration(
                  color: Color(0xFF6C6C6C),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 7.59),
              Container(
                width: 5.70,
                height: 6,
                decoration: const BoxDecoration(
                  color: Color(0xFF6C6C6C),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
