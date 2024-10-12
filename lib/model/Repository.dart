
import 'package:clothing_trial/model/place_model.dart';

import 'http_service.dart';

class PlacesRepository {
  final ApiService apiService;

  PlacesRepository(this.apiService);

  Future<List<Place>> getPlaces() async {
    return await apiService.fetchPlaces();
  }

// Add methods for POST, PUT, DELETE if needed
}
