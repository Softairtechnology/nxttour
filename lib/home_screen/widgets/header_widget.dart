import 'package:clothing_trial/home_screen/widgets/category_item__widget.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  void onCategoryTap(String category) {
    print('Tapped on $category');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 393,
          height: 211,
          child: Stack(
            children: [
              _buildBackgroundContainer(),
              _buildSearchBar(),
              _buildAddressSection(),
              _buildProfileIcon(),
              _buildCategoryScrollView(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBackgroundContainer() {
    return Positioned(
      left: 0,
      top: 0,
      child: Container(
        width: 393,
        height: 211,
        clipBehavior: Clip.antiAlias,
        decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(33),
              topRight: Radius.circular(33),
            ),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x3F343333),
              blurRadius: 4,
              offset: Offset(0, 5),
              spreadRadius: -1,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Positioned(
      left: 11,
      top: 99,
      child: SizedBox(
        width: 372,
        height: 49,
        child: Container(
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFD7D7D7)),
              borderRadius: BorderRadius.circular(13),
            ),
          ),
          child: Row(
            children: [
              const SizedBox(width: 10),
              IconButton(
                icon: const Icon(Icons.search, color: Colors.blue),
                onPressed: () => print('Search icon pressed'),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Search for “Pair of Shoe”',
                    border: InputBorder.none,
                  ),
                  onSubmitted: (query) => print('Searching for: $query'),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.mic, color: Colors.blue),
                onPressed: () => print('Microphone icon pressed'),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAddressSection() {
    return Positioned(
      top: 30,
      left: 28,
      child: SizedBox(
        width: 233,
        height: 70,
        child: Row(
          children: [
            _buildDaySelector(),
            const SizedBox(width: 8.0),
            _buildAddressInput(),
          ],
        ),
      ),
    );
  }

  Widget _buildDaySelector() {
    return Container(
      width: 38,
      height: 39,
      decoration: BoxDecoration(
        color: const Color(0xFF3E77FF),
        borderRadius: BorderRadius.circular(13),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '2',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFF3F3F3),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'Day',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFF3F3F3),
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddressInput() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Delivery to Flat',
            style: TextStyle(
              color: Color(0xFF292929),
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  initialValue: 'Random address 110 block A',
                  style: const TextStyle(
                    color: Color(0xFF5F5F5F),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.edit, color: Color(0xFF5F5F5F)),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProfileIcon() {
    return Positioned(
      left: 349,
      top: 52,
      child: InkWell(
        onTap: () => print('Icon button pressed'),
        child: SizedBox(
          width: 24,
          height: 24,
          child: Image.asset('assets/images/Vector.png'),
        ),
      ),
    );
  }

  Widget _buildCategoryScrollView() {
    return Positioned(
      left: 11,
      top: 155,
      child: SizedBox(
        height: 50,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            CategoryItem(
              imagePath: 'assets/images/all.png',
              label: 'All',
              onTap: () => onCategoryTap('All'),
            ),
            const SizedBox(width: 10),
            CategoryItem(
              imagePath: 'assets/images/sale.png',
              label: 'Sale',
              onTap: () => onCategoryTap('Sale'),
            ),
            const SizedBox(width: 10),
            CategoryItem(
              imagePath: 'assets/images/men.png',
              label: 'Mens',
              onTap: () => onCategoryTap('Mens'),
            ),
            const SizedBox(width: 10),
            CategoryItem(
              imagePath: 'assets/images/girls.png',
              label: 'Women',
              onTap: () => onCategoryTap('Women'),
            ),
            const SizedBox(width: 10),
            CategoryItem(
              imagePath: 'assets/images/all.png',
              label: 'Kids',
              onTap: () => onCategoryTap('Kids'),
            ),
          ],
        ),
      ),
    );
  }
}
