import 'package:rxdart/rxdart.dart';

import '../../services/wishlist_hotel_service.dart';
import '../../models/hotel.dart';

class WishlistHotelBloc {
  // Wishlist streamcontroller
  BehaviorSubject<List<Hotel>> _wishlistController =
      BehaviorSubject<List<Hotel>>();

  // Closing the streamcontroller
  void dispose() => _wishlistController.close();

  // Retrieve data
  Stream<List<Hotel>> get wishlistStream =>
      Stream.fromFuture(WishlistHotelService().browse());

  // Adding data
  void addToWishlist(Hotel hotel) =>
      WishlistHotelService().addToWishlist(hotel);
  // Function(Hotel) get addToWishlist => _wishlistController.sink.add(hotel);
}
