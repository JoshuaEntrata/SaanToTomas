class Places {
  // final int placeId;
  final String name;
  final String address;
  final String description;
  final double latitude;
  final double longitude;
  final String category;

  Places({
    // required this.placeId,
    required this.name,
    required this.address,
    required this.description,
    required this.latitude,
    required this.longitude,
    required this.category,
  });

  // factory Places.fromSqfliteDatabase(Map<String, dynamic> place) => Places(
  // // placeId: place['places_id']?.toDartInt() ?? 0,
  // name: place['name'] ?? '',
  // address: place['address'] ?? '',
  // description: place['description'] ?? '',
  // latitude: place['latitude'] ?? 0.0,
  // longitude: place['longitude'] ?? 0.0,
  // category: place['category'] ?? ''
  // );

}