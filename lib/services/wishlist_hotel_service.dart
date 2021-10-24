import 'package:hotel_app_practice/models/hotel.dart';

class WishlistHotelService {
  List<Map<String, dynamic>>? _wishlistHotels;

  Future<List<Hotel>> browse() async {
    // _wishlistHotels = [
    //   {
    //     "name": "Hotel 1",
    //     "price": 1499.99,
    //     "location": "New Delhi",
    //     "rating": 4,
    //     "imageUrl":
    //         "https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg",
    //   },
    //   {
    //     "name": "Hotel 2",
    //     "price": 1199.99,
    //     "location": "Dehradun",
    //     "rating": 3,
    //     "imageUrl":
    //         "https://pix10.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?s=1024x768",
    //   },
    // ];

    await Future.delayed(Duration(seconds: 1));

    // if (_wishlistHotels == null) {

    // }

    // Converting List<Map<String, dynamic>> to List<Hotel>
    Iterable<Hotel> _hotels =
        _wishlistHotels!.map((hotel) => Hotel.fromJSON(hotel));

    return _hotels.toList();
  }

  void addToWishlist(Hotel hotel) {
    final _hotel = Hotel.toJSON(hotel);
    _wishlistHotels!.add(_hotel);
  }
}
