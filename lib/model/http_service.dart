import 'dart:convert';
import 'package:http/http.dart' as http;
import 'place_model.dart'; // Import the model

class ApiService {
  final String baseUrl = 'https://nxttour.in/api/';

  Future<List<Place>> fetchPlaces() async {
    final response = await http.get(Uri.parse('${baseUrl}getFamourPlaces'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((placeJson) => Place.fromJson(placeJson)).toList();
    } else {
      throw Exception('Failed to load places');
    }
  }

// Define other methods for POST, PUT, DELETE here
}
