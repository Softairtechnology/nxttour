import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 399,
      height: 376,
      color: const Color(0xFFF7FAFF),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 1),
            child: Row(
              children: [
                const Column(
                  children: [
                    Text(
                      'Experience the mobile app',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Assured Quality I 100% Handpicked I Easy Exchange',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/playstore.png',
                  width: 158,
                  height: 126,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 14, top: 2),
            child: Text(
              'About App',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              children: [
                _buildFooterButton('App', selected: true),
                _buildFooterButton('Help'),
                _buildFooterButton('Shop By'),
                _buildFooterButton('Follow Us', isLast: true),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 20),
            child: Text(
              'Who We Are\nJoin our Team\nTerms & Conditions\nFees & Payments\nReturn & Refunds Policy\nPromotions Terms & Conditions',
              style: TextStyle(
                color: Color(0xFF707070),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterButton(String text,
      {bool selected = false, bool isLast = false}) {
    return Expanded(
      child: Container(
        height: 44,
        decoration: BoxDecoration(
          color: selected ? const Color(0xFF2E2E2E) : Colors.white,
          borderRadius: BorderRadius.horizontal(
            left: selected ? const Radius.circular(13) : Radius.zero,
            right: isLast ? const Radius.circular(13) : Radius.zero,
          ),
          border: Border.all(color: Colors.grey),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: selected ? Colors.white : const Color(0xFF707070),
            fontSize: selected ? 20 : 16,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
