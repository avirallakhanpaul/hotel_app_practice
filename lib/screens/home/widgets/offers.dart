import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          // Enticing Offers
          "Exciting Offers",
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Container(
                width: screenSize.width * 0.5,
                height: screenSize.height * 0.16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[300],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 16.0,
                ),
              ),
              Container(
                width: screenSize.width * 0.5,
                height: screenSize.height * 0.16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[300],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 16.0,
                ),
              ),
              Container(
                width: screenSize.width * 0.5,
                height: screenSize.height * 0.16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[300],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
