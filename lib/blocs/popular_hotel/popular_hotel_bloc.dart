import '../../models/hotel.dart';
import '../../services/popular_hotel_service.dart';
// import 'package:rxdart/rxdart.dart';

class PopularHotelBloc {
  // StreamController
  // final BehaviorSubject<List<Hotel>> _popularHotelController =
  //     BehaviorSubject<List<Hotel>>();

  // Retrieve data
  Stream<List<Hotel>> get popHotelStream =>
      Stream.fromFuture(PopularHotelService.browse());

  // Class constructor
  PopularHotelBloc() {
    // Adding data to the stream
    // _popularHotelController.sink.add(_hotels.toList());
  }

  // void dispose() => _popularHotelController.close();
}
