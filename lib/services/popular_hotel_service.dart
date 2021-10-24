import 'package:hotel_app_practice/models/hotel.dart';

class PopularHotelService {
  static Future<List<Hotel>> browse() async {
    List<Map<String, dynamic>> _popHotels = [
      {
        "name": "Hotel 1",
        "price": 1499.99,
        "location": "New Delhi",
        "rating": 4,
        "imageUrl":
            "https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg",
      },
      {
        "name": "Hotel 2",
        "price": 1199.99,
        "location": "Dehradun",
        "rating": 3,
        "imageUrl":
            "https://pix10.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?s=1024x768",
      },
      {
        "name": "Hotel 3",
        "price": 2599.99,
        "location": "New Delhi",
        "rating": 5,
        "imageUrl":
            "https://media-cdn.tripadvisor.com/media/photo-s/0a/e3/bc/4c/very-nice-hotel-and-salted.jpg",
      }
    ];

    await Future.delayed(Duration(seconds: 1));

    // Converting List<Map<String, dynamic>> to List<Hotel>
    Iterable<Hotel> _hotels = _popHotels.map((hotel) => Hotel.fromJSON(hotel));

    return _hotels.toList();
  }
}
