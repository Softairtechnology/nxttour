class Place {
  final String id;
  final String place;
  final String image;
  final double price;
  final double rate;
  final String duration;

  Place({
    required this.id,
    required this.place,
    required this.image,
    required this.price,
    required this.rate,
    required this.duration,
  });

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      id: json['id'] as String,
      place: json['place'] as String,
      image: json['image'] as String,
      price: (json['price'] as num).toDouble(),
      rate: (json['rate'] as num).toDouble(),
      duration: json['duration'] as String,
    );
  }
}
