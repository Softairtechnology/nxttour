import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 358,
          height: 242,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildRow([
                'assets/images/image100.png',
                'assets/images/image101.png',
                'assets/images/image102.png'
              ]),
              const SizedBox(height: 6),
              _buildRow([
                'assets/images/image103.png',
                'assets/images/image104.png',
                'assets/images/image105.png'
              ]),
            ],
          ),
        ),
      ],
    );
  }

  Row _buildRow(List<String> imagePaths) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(3, (index) => _buildCard(imagePaths[index])),
    );
  }

  Widget _buildCard(String imagePath) {
    return Container(
      width: 114,
      height: 118,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 9,
            top: 9,
            child: Container(
              width: 95,
              height: 95,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 30,
              decoration: const BoxDecoration(
                color: Color(0xFF111111),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(13),
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                '50% off',
                style: TextStyle(
                  color: Color(0xFFDADADA),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
