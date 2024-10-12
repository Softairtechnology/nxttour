import 'package:flutter/material.dart';

class BrandAdd extends StatelessWidget {
  const BrandAdd({super.key});

  @override
  Widget build(BuildContext context) {
    final images = [
      'assets/images/image11.png',
      'assets/images/image12.png',
      'assets/images/image13.png',
      'assets/images/image14.png',
      'assets/images/image15.png',
      'assets/images/image16.png',
    ];

    return Column(
      children: [
        Container(
          width: 393,
          height: 473,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/back.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: [
              const Positioned(
                left: 6,
                top: 21,
                child: Text(
                  'THE ULTIMATE',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Positioned(
                left: 6,
                top: 40,
                child: Text(
                  'BRAND BRIGADE',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 13,
                top: 98,
                child: SizedBox(
                  width: 367,
                  height: 353,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 14,
                      crossAxisSpacing: 14,
                      childAspectRatio: 114 / 171,
                    ),
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          print('Tapped on ${images[index]}');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(images[index]),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
