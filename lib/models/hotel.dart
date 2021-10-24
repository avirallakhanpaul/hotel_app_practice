class Hotel {
  final String name;
  final double price;
  final String location;
  final int? rating;
  final String imageUrl;

  Hotel({
    required this.name,
    required this.price,
    required this.location,
    this.rating,
    required this.imageUrl,
  });

  Hotel.fromJSON(Map<String, dynamic> map)
      : name = map["name"],
        price = map["price"],
        location = map["location"],
        rating = map["rating"],
        imageUrl = map["imageUrl"];

  static Map<String, dynamic> toJSON(Hotel hotel) {
    return {
      "name": hotel.name,
      "price": hotel.price,
      "location": hotel.location,
      "rating": hotel.rating,
      "imageUrl": hotel.imageUrl,
    };
  }
}
