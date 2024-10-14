
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/Repository.dart';
import '../model/http_service.dart';
import '../model/place_model.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: const [
            Header(),
            Places(),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.37,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('lib/assets/header_back.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(8),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.25),
                    blurRadius: 5,
                    offset: const Offset(0, 7),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 16,
              left: 16,
              child: Image.asset(
                'lib/assets/logo_nxt.png',
                height: 28,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 65),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Discover the Planet...',
                      style: GoogleFonts.seaweedScript(
                        fontSize: 22,
                        color: const Color.fromARGB(255, 50, 141, 137),
                      ),
                    ),
                    Text('Creating memories \n that last...',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.urbanist(
                            fontSize: 39,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5, top: 10.0),
          // Add padding to the left and top
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Popular Packages',
                style: GoogleFonts.seaweedScript(
                  fontSize: 18,
                  color: const Color.fromARGB(255, 50, 141, 137),
                ),
              ),
              const SizedBox(height: 8), // Add some space between the texts if needed
              Text(
                'Featured Plans',
                style: GoogleFonts.urbanist(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Places extends StatelessWidget {
  const Places({super.key});

  @override
  Widget build(BuildContext context) {
    final apiService = ApiService();
    final repository = PlacesRepository(apiService);

    return FutureBuilder<List<Place>>(
      future: repository.getPlaces(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No places available'));
        } else {
          final places = snapshot.data!;
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: places.length,
            itemBuilder: (context, index) {
              final place = places[index];
              return Card(
                margin: const EdgeInsets.only(bottom: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(color: Color(0xFFE3E3E3), width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.network(
                          'https://nxttour.in/${place.image}',
                          height: 114,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        place.place,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1C1C1C),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'From: Rs. ${place.price}',
                        style: const TextStyle(
                          fontSize: 10,
                          color: Color(0xFF1BAFA8),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Discounted Price: Rs. ${place.rate}',
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.timer, size: 12, color: Colors.grey),
                          const SizedBox(width: 4),
                          Text(
                            place.duration,
                            style: const TextStyle(
                                fontSize: 10, color: Color(0xFF1C1C1C)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      TextButton(
                        onPressed: () {
                          // Handle explore action
                        },
                        child: const Text(
                          'Explore More',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}




