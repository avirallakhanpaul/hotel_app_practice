import 'package:flutter/material.dart';
import 'package:hotel_app_practice/blocs/provider.dart';

import '../../../blocs/popular_hotel/popular_hotel_bloc.dart';
import '../../../models/hotel.dart';

class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final popHotelBloc = Provider.of<PopularHotelBloc>(context).bloc;
    final screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          // Enticing Offers
          "Popular Hotels",
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.black87,
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: 8.0,
          ),
        ),
        Container(
          width: screenSize.width,
          height: screenSize.height * 0.25,
          child: StreamBuilder<List<Hotel>>(
            stream: popHotelBloc.popHotelStream,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                case ConnectionState.active:
                case ConnectionState.done:
                  final List<Hotel>? hotels = snapshot.data;
                  return ListView.separated(
                    separatorBuilder: (context, i) => SizedBox(
                      width: 16.0,
                    ),
                    scrollDirection: Axis.horizontal,
                    itemCount: hotels!.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onLongPress: null,
                        child: Container(
                          width: screenSize.width * 0.42,
                          height: screenSize.height * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[200],
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                height: screenSize.height * 0.13,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.grey[300],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    hotels[index].imageUrl,
                                    fit: BoxFit.fill,
                                    width: 500,
                                    loadingBuilder:
                                        (context, child, loadingProgress) {
                                      if (loadingProgress == null) return child;
                                      return Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12.0,
                              ),
                              Text(
                                hotels[index].name,
                              ),
                              SizedBox(
                                height: 12.0,
                              ),
                              Text(
                                "₹${hotels[index].price} per night",
                              ),
                              SizedBox(
                                height: 12.0,
                              ),
                              Text(
                                hotels[index].location,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
              }
            },
          ),
        ),
      ],
    );
  }
}
