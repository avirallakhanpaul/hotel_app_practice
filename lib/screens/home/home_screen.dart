import 'package:flutter/material.dart';
import 'package:hotel_app_practice/blocs/popular_hotel/popular_hotel_bloc.dart';
import 'package:hotel_app_practice/blocs/provider.dart';
import 'package:hotel_app_practice/screens/home/widgets/offers.dart';
import 'package:hotel_app_practice/screens/home/widgets/popular.dart';
import 'package:hotel_app_practice/screens/wishlist_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hotels"),
        toolbarHeight: screenSize.height * 0.1,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WishlistScreen(),
              ),
            ),
            icon: Icon(
              Icons.favorite,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 16.0,
            ),
          ),
          GestureDetector(
            child: CircleAvatar(
              backgroundColor: Colors.grey[400],
              radius: 15.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 16.0,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 16.0,
        ),
        children: <Widget>[
          Offers(),
          Padding(
            padding: EdgeInsets.only(
              bottom: 32.0,
            ),
          ),
          Provider<PopularHotelBloc>(
            bloc: PopularHotelBloc(),
            child: Popular(),
          ),
        ],
      ),
    );
  }
}
