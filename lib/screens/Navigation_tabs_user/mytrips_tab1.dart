// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'dart:math';

class UserMyTripsTabPage extends StatefulWidget {
  const UserMyTripsTabPage({super.key});

  @override
  _UserMyTripsTabPageState createState() => _UserMyTripsTabPageState();
}

class _UserMyTripsTabPageState extends State<UserMyTripsTabPage> {
  bool _showUpcomingTrips = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: () async {
            // perform the refresh logic here
          },
          child: Padding(
            padding: EdgeInsets.only(top: 24, left: 16, right: 16, bottom: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My trips",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        _buildToggleButton('Upcoming', _showUpcomingTrips, () {
                          setState(() {
                            _showUpcomingTrips = true;
                          });
                        }),
                        _buildToggleButton('Older', !_showUpcomingTrips, () {
                          setState(() {
                            _showUpcomingTrips = false;
                          });
                        }),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: _showUpcomingTrips
                      ? _buildUpcomingTrips()
                      : _buildOlderTrips(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildToggleButton(
      String title, bool isSelected, VoidCallback onPressed) {
    return Padding(
      padding: EdgeInsets.only(left: 5, right: 5, bottom: 0),
      child: Container(
        height: 40,
        width: 165,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: isSelected ? Colors.white : Colors.yellow,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0.0,
          ),
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUpcomingTrips() {
    return SingleChildScrollView(
      padding: EdgeInsetsDirectional.fromSTEB(5, 16, 5, 0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(top: 0, end: 250),
            child: Text(
              'Upcoming',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 200,
            width: 380,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(0, 2),
                  blurRadius: 3,
                  spreadRadius: 0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      '03 Jun 2022 starts at 13:00',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Column(
                        children: [
                          Text(
                            'Kasun Perera',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 1),
                          Text(
                            '16 ratings',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 2),
                    Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.shade800,
                        child: Stack(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                              top: 32,
                              bottom: 0,
                              left: 14,
                              child: Stack(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.black,
                                    size: 14,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Icon(
                      Icons.location_pin,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Katunayake',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Transform.rotate(
                        angle: 90 * pi / 180,
                        child: Transform.scale(
                          scale: 0.9,
                          child: Icon(Icons.linear_scale),
                        )),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Icon(
                      Icons.my_location,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Kandy',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 20,
                      width: 80,
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(0, 2),
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'accepted',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 16),
                    Text(
                      'Estimated arrival to Kegalle: 12.30 PM 21st Mar 22',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Rs.2400',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 150,
                      height: 30,
                      margin: EdgeInsets.fromLTRB(16, 5, 0, 12),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: TextButton(
                        onPressed: () {
                          //
                        },
                        child: Center(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 150,
                      height: 30,
                      margin: EdgeInsets.fromLTRB(16, 5, 0, 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        border: Border.all(
                          color: Colors.yellow,
                          width: 1.5,
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: Offset(0, 2),
                                        blurRadius: 3,
                                        spreadRadius: 0,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                    ),
                                  ),
                                  width: double.infinity,
                                  height: 450,
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 16, top: 16),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            '03 Jun 2022 starts at 13:00',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Icon(
                                            Icons.location_pin,
                                            color: Colors.yellow,
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            'Katunayake',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Transform.rotate(
                                              angle: 90 * pi / 180,
                                              child: Transform.scale(
                                                scale: 0.8,
                                                child: Icon(Icons.linear_scale),
                                              )),
                                          Spacer(),
                                          Text(
                                            'pets allowed',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      SizedBox(height: 0),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Transform.rotate(
                                              angle: 90 * pi / 180,
                                              child: Transform.scale(
                                                scale: 0.8,
                                                child: Icon(Icons.linear_scale),
                                              )),
                                          Spacer(),
                                          Text(
                                            'women only',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Icon(
                                            Icons.my_location,
                                            color: Colors.yellow,
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            'Kandy',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'smoking in the car',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          SizedBox(width: 16),
                                          Text(
                                            'Estimated arrival to Kegalle: 12.30 PM 21st Mar 22',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'Rs.2400',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 16),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 16, top: 10),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'People',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Column(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Kasun Perera',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 50),
                                                      child: Text(
                                                        'Driver',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 170),
                                                      child: Text(
                                                        'Deekay',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 140),
                                                      child: Text(
                                                        'Eric harrison',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 140),
                                                      child: Text(
                                                        'Eric harrison',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Center(
                          child: Text(
                            'More info',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 200,
            width: 380,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(0, 2),
                  blurRadius: 3,
                  spreadRadius: 0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      '03 Jun 2022 starts at 13:00',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Column(
                        children: [
                          Text(
                            'Kasun Perera',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 1),
                          Text(
                            '16 ratings',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 2),
                    Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.shade800,
                        child: Stack(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                              top: 32,
                              bottom: 0,
                              left: 14,
                              child: Stack(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.black,
                                    size: 14,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Icon(
                      Icons.location_pin,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Katunayake',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Transform.rotate(
                        angle: 90 * pi / 180,
                        child: Transform.scale(
                          scale: 0.9,
                          child: Icon(Icons.linear_scale),
                        )),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Icon(
                      Icons.my_location,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Kandy',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 20,
                      width: 80,
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(0, 2),
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'pending',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 16),
                    Text(
                      'Estimated arrival to Kegalle: 12.30 PM 21st Mar 22',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Rs.2400',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 150,
                      height: 30,
                      margin: EdgeInsets.fromLTRB(16, 5, 0, 12),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: TextButton(
                        onPressed: () {
                          //
                        },
                        child: Center(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 150,
                      height: 30,
                      margin: EdgeInsets.fromLTRB(16, 5, 0, 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        border: Border.all(
                          color: Colors.yellow,
                          width: 1.5,
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: Offset(0, 2),
                                        blurRadius: 3,
                                        spreadRadius: 0,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                    ),
                                  ),
                                  width: double.infinity,
                                  height: 450,
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 16, top: 16),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            '03 Jun 2022 starts at 13:00',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Icon(
                                            Icons.location_pin,
                                            color: Colors.yellow,
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            'Katunayake',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Transform.rotate(
                                              angle: 90 * pi / 180,
                                              child: Transform.scale(
                                                scale: 0.8,
                                                child: Icon(Icons.linear_scale),
                                              )),
                                          Spacer(),
                                          Text(
                                            'pets allowed',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      SizedBox(height: 0),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Transform.rotate(
                                              angle: 90 * pi / 180,
                                              child: Transform.scale(
                                                scale: 0.8,
                                                child: Icon(Icons.linear_scale),
                                              )),
                                          Spacer(),
                                          Text(
                                            'women only',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Icon(
                                            Icons.my_location,
                                            color: Colors.yellow,
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            'Kandy',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'smoking in the car',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          SizedBox(width: 16),
                                          Text(
                                            'Estimated arrival to Kegalle: 12.30 PM 21st Mar 22',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'Rs.2400',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 16),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 16, top: 10),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'People',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Column(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Kasun Perera',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 50),
                                                      child: Text(
                                                        'Driver',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 170),
                                                      child: Text(
                                                        'Deekay',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 140),
                                                      child: Text(
                                                        'Eric harrison',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 140),
                                                      child: Text(
                                                        'Eric harrison',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Center(
                          child: Text(
                            'More info',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 200,
            width: 380,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(0, 2),
                  blurRadius: 3,
                  spreadRadius: 0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      '03 Jun 2022 starts at 13:00',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Column(
                        children: [
                          Text(
                            'Kasun Perera',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 1),
                          Text(
                            '16 ratings',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 2),
                    Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.shade800,
                        child: Stack(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                              top: 32,
                              bottom: 0,
                              left: 14,
                              child: Stack(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.black,
                                    size: 14,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Icon(
                      Icons.location_pin,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Katunayake',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Transform.rotate(
                        angle: 90 * pi / 180,
                        child: Transform.scale(
                          scale: 0.9,
                          child: Icon(Icons.linear_scale),
                        )),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Icon(
                      Icons.my_location,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Kandy',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 20,
                      width: 80,
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(0, 2),
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'pending',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 16),
                    Text(
                      'Estimated arrival to Kegalle: 12.30 PM 21st Mar 22',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Rs.2400',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 150,
                      height: 30,
                      margin: EdgeInsets.fromLTRB(16, 5, 0, 12),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: TextButton(
                        onPressed: () {
                          //
                        },
                        child: Center(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 150,
                      height: 30,
                      margin: EdgeInsets.fromLTRB(16, 5, 0, 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        border: Border.all(
                          color: Colors.yellow,
                          width: 1.5,
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: Offset(0, 2),
                                        blurRadius: 3,
                                        spreadRadius: 0,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                    ),
                                  ),
                                  width: double.infinity,
                                  height: 450,
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 16, top: 16),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            '03 Jun 2022 starts at 13:00',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Icon(
                                            Icons.location_pin,
                                            color: Colors.yellow,
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            'Katunayake',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Transform.rotate(
                                              angle: 90 * pi / 180,
                                              child: Transform.scale(
                                                scale: 0.8,
                                                child: Icon(Icons.linear_scale),
                                              )),
                                          Spacer(),
                                          Text(
                                            'pets allowed',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      SizedBox(height: 0),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Transform.rotate(
                                              angle: 90 * pi / 180,
                                              child: Transform.scale(
                                                scale: 0.8,
                                                child: Icon(Icons.linear_scale),
                                              )),
                                          Spacer(),
                                          Text(
                                            'women only',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Icon(
                                            Icons.my_location,
                                            color: Colors.yellow,
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            'Kandy',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'smoking in the car',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          SizedBox(width: 16),
                                          Text(
                                            'Estimated arrival to Kegalle: 12.30 PM 21st Mar 22',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'Rs.2400',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 16),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 16, top: 10),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'People',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Column(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Kasun Perera',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 50),
                                                      child: Text(
                                                        'Driver',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 170),
                                                      child: Text(
                                                        'Deekay',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 140),
                                                      child: Text(
                                                        'Eric harrison',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 140),
                                                      child: Text(
                                                        'Eric harrison',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Center(
                          child: Text(
                            'More info',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 200,
            width: 380,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(0, 2),
                  blurRadius: 3,
                  spreadRadius: 0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      '03 Jun 2022 starts at 13:00',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Column(
                        children: [
                          Text(
                            'Kasun Perera',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 1),
                          Text(
                            '16 ratings',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 2),
                    Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.shade800,
                        child: Stack(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                              top: 32,
                              bottom: 0,
                              left: 14,
                              child: Stack(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.black,
                                    size: 14,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Icon(
                      Icons.location_pin,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Katunayake',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Transform.rotate(
                        angle: 90 * pi / 180,
                        child: Transform.scale(
                          scale: 0.9,
                          child: Icon(Icons.linear_scale),
                        )),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Icon(
                      Icons.my_location,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Kandy',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 20,
                      width: 80,
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(0, 2),
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'pending',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 16),
                    Text(
                      'Estimated arrival to Kegalle: 12.30 PM 21st Mar 22',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Rs.2400',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 150,
                      height: 30,
                      margin: EdgeInsets.fromLTRB(16, 5, 0, 12),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: TextButton(
                        onPressed: () {
                          //
                        },
                        child: Center(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 150,
                      height: 30,
                      margin: EdgeInsets.fromLTRB(16, 5, 0, 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        border: Border.all(
                          color: Colors.yellow,
                          width: 1.5,
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: Offset(0, 2),
                                        blurRadius: 3,
                                        spreadRadius: 0,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                    ),
                                  ),
                                  width: double.infinity,
                                  height: 450,
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 16, top: 16),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            '03 Jun 2022 starts at 13:00',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Icon(
                                            Icons.location_pin,
                                            color: Colors.yellow,
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            'Katunayake',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Transform.rotate(
                                              angle: 90 * pi / 180,
                                              child: Transform.scale(
                                                scale: 0.8,
                                                child: Icon(Icons.linear_scale),
                                              )),
                                          Spacer(),
                                          Text(
                                            'pets allowed',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      SizedBox(height: 0),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Transform.rotate(
                                              angle: 90 * pi / 180,
                                              child: Transform.scale(
                                                scale: 0.8,
                                                child: Icon(Icons.linear_scale),
                                              )),
                                          Spacer(),
                                          Text(
                                            'women only',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Icon(
                                            Icons.my_location,
                                            color: Colors.yellow,
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            'Kandy',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'smoking in the car',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          SizedBox(width: 16),
                                          Text(
                                            'Estimated arrival to Kegalle: 12.30 PM 21st Mar 22',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'Rs.2400',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 16),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 16, top: 10),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'People',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Column(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Kasun Perera',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 50),
                                                      child: Text(
                                                        'Driver',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 170),
                                                      child: Text(
                                                        'Deekay',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 140),
                                                      child: Text(
                                                        'Eric harrison',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 140),
                                                      child: Text(
                                                        'Eric harrison',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Center(
                          child: Text(
                            'More info',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildOlderTrips() {
    return SingleChildScrollView(
      padding: EdgeInsetsDirectional.fromSTEB(5, 16, 5, 0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(top: 0, end: 290),
            child: Text(
              'Older',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 170,
            width: 380,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(0, 2),
                  blurRadius: 3,
                  spreadRadius: 0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      '03 Jun 2022 starts at 13:00',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Icon(
                      Icons.location_pin,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Katunayake',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Transform.rotate(
                        angle: 90 * pi / 180,
                        child: Transform.scale(
                          scale: 0.9,
                          child: Icon(Icons.linear_scale),
                        )),
                    Spacer(),
                    Text(
                      'reviews',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Icon(
                      Icons.my_location,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Kandy',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '5 people were joined',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 150,
                      height: 30,
                      margin: EdgeInsets.fromLTRB(16, 5, 0, 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        border: Border.all(
                          color: Colors.yellow,
                          width: 1.5,
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: Offset(0, 2),
                                        blurRadius: 3,
                                        spreadRadius: 0,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                    ),
                                  ),
                                  width: double.infinity,
                                  height: 450,
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 16, top: 16),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            '03 Jun 2022 starts at 13:00',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Icon(
                                            Icons.location_pin,
                                            color: Colors.yellow,
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            'Katunayake',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Transform.rotate(
                                              angle: 90 * pi / 180,
                                              child: Transform.scale(
                                                scale: 0.8,
                                                child: Icon(Icons.linear_scale),
                                              )),
                                          Spacer(),
                                          Text(
                                            'pets allowed',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      SizedBox(height: 0),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Transform.rotate(
                                              angle: 90 * pi / 180,
                                              child: Transform.scale(
                                                scale: 0.8,
                                                child: Icon(Icons.linear_scale),
                                              )),
                                          Spacer(),
                                          Text(
                                            'women only',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Icon(
                                            Icons.my_location,
                                            color: Colors.yellow,
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            'Kandy',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'smoking in the car',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          SizedBox(width: 16),
                                          Text(
                                            'Estimated arrival to Kegalle: 12.30 PM 21st Mar 22',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'Rs.2400',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 16),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 16, top: 10),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'People',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Column(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Kasun Perera',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 50),
                                                      child: Text(
                                                        'Driver',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 170),
                                                      child: Text(
                                                        'Deekay',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 140),
                                                      child: Text(
                                                        'Eric harrison',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 140),
                                                      child: Text(
                                                        'Eric harrison',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Center(
                          child: Text(
                            'More info',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 150,
                      height: 30,
                      margin: EdgeInsets.fromLTRB(16, 5, 0, 12),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: Offset(0, 2),
                                        blurRadius: 3,
                                        spreadRadius: 0,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                    ),
                                  ),
                                  width: double.infinity,
                                  height: 290,
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 16, top: 10),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'People',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 12),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 12),
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.grey.shade800,
                                              child: Stack(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.person,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            children: [
                                              Text(
                                                'Kasun Perera',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(height: 1),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 70),
                                                child: Text(
                                                  'Driver',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 120,
                                            height: 30,
                                            margin: EdgeInsets.fromLTRB(
                                                16, 5, 0, 12),
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              border: Border.all(
                                                color: Colors.yellow,
                                                width: 1.5,
                                              ),
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 255,
                                                        padding: EdgeInsets.all(
                                                            16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              16),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Text(
                                                                      'Rate',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Spacer(),
                                                                Container(
                                                                  height: 25,
                                                                  width: 25,
                                                                  child:
                                                                      CircleAvatar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .grey
                                                                            .shade300,
                                                                    child:
                                                                        IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Icon(
                                                                          Icons
                                                                              .close),
                                                                      iconSize:
                                                                          10,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    width: 16),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                                height: 20),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 20),
                                                              child: Row(
                                                                children: [
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: 15),
                                                            Container(
                                                              width: 332,
                                                              height: 80,
                                                              child: TextField(
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText:
                                                                      'Share your thoughts...',
                                                                  filled: true,
                                                                  fillColor: Colors
                                                                      .grey
                                                                      .shade200,
                                                                  border:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide
                                                                            .none,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                ),
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 14,
                                                                ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .text,
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 35,
                                                              width: 332,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .yellow,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Text(
                                                                  'Rate',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Center(
                                                child: Text(
                                                  'Rate',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 6),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 12),
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.grey.shade800,
                                              child: Stack(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.person,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 55),
                                                child: Text(
                                                  'Kasun Perera',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 1),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 75),
                                                child: Text(
                                                  'Co-passenger',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 120,
                                            height: 30,
                                            margin: EdgeInsets.fromLTRB(
                                                16, 5, 0, 12),
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              border: Border.all(
                                                color: Colors.yellow,
                                                width: 1.5,
                                              ),
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 255,
                                                        padding: EdgeInsets.all(
                                                            16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              16),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Text(
                                                                      'Rate',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Spacer(),
                                                                Container(
                                                                  height: 25,
                                                                  width: 25,
                                                                  child:
                                                                      CircleAvatar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .grey
                                                                            .shade300,
                                                                    child:
                                                                        IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Icon(
                                                                          Icons
                                                                              .close),
                                                                      iconSize:
                                                                          10,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    width: 16),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                                height: 20),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 20),
                                                              child: Row(
                                                                children: [
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: 15),
                                                            Container(
                                                              width: 332,
                                                              height: 80,
                                                              child: TextField(
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText:
                                                                      'Share your thoughts...',
                                                                  filled: true,
                                                                  fillColor: Colors
                                                                      .grey
                                                                      .shade200,
                                                                  border:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide
                                                                            .none,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                ),
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 14,
                                                                ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .text,
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 35,
                                                              width: 332,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .yellow,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Text(
                                                                  'Rate',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Center(
                                                child: Text(
                                                  'Rate',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 6),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 12),
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.grey.shade800,
                                              child: Stack(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.person,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 55),
                                                child: Text(
                                                  'Kasun Perera',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 1),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 75),
                                                child: Text(
                                                  'Co-passenger',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 120,
                                            height: 30,
                                            margin: EdgeInsets.fromLTRB(
                                                16, 5, 0, 12),
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              border: Border.all(
                                                color: Colors.yellow,
                                                width: 1.5,
                                              ),
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 255,
                                                        padding: EdgeInsets.all(
                                                            16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              16),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Text(
                                                                      'Rate',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Spacer(),
                                                                Container(
                                                                  height: 25,
                                                                  width: 25,
                                                                  child:
                                                                      CircleAvatar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .grey
                                                                            .shade300,
                                                                    child:
                                                                        IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Icon(
                                                                          Icons
                                                                              .close),
                                                                      iconSize:
                                                                          10,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    width: 16),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                                height: 20),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 20),
                                                              child: Row(
                                                                children: [
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: 15),
                                                            Container(
                                                              width: 332,
                                                              height: 80,
                                                              child: TextField(
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText:
                                                                      'Share your thoughts...',
                                                                  filled: true,
                                                                  fillColor: Colors
                                                                      .grey
                                                                      .shade200,
                                                                  border:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide
                                                                            .none,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                ),
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 14,
                                                                ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .text,
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 35,
                                                              width: 332,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .yellow,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Text(
                                                                  'Rate',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Center(
                                                child: Text(
                                                  'Rate',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 6),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 12),
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.grey.shade800,
                                              child: Stack(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.person,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 55),
                                                child: Text(
                                                  'Kasun Perera',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 1),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 75),
                                                child: Text(
                                                  'Co-passenger',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 120,
                                            height: 30,
                                            margin: EdgeInsets.fromLTRB(
                                                16, 5, 0, 12),
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              border: Border.all(
                                                color: Colors.yellow,
                                                width: 1.5,
                                              ),
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 255,
                                                        padding: EdgeInsets.all(
                                                            16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              16),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Text(
                                                                      'Rate',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Spacer(),
                                                                Container(
                                                                  height: 25,
                                                                  width: 25,
                                                                  child:
                                                                      CircleAvatar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .grey
                                                                            .shade300,
                                                                    child:
                                                                        IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Icon(
                                                                          Icons
                                                                              .close),
                                                                      iconSize:
                                                                          10,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    width: 16),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                                height: 20),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 20),
                                                              child: Row(
                                                                children: [
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: 15),
                                                            Container(
                                                              width: 332,
                                                              height: 80,
                                                              child: TextField(
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText:
                                                                      'Share your thoughts...',
                                                                  filled: true,
                                                                  fillColor: Colors
                                                                      .grey
                                                                      .shade200,
                                                                  border:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide
                                                                            .none,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                ),
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 14,
                                                                ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .text,
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 35,
                                                              width: 332,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .yellow,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Text(
                                                                  'Rate',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Center(
                                                child: Text(
                                                  'Rate',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Center(
                          child: Text(
                            'Rate',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 170,
            width: 380,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(0, 2),
                  blurRadius: 3,
                  spreadRadius: 0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      '03 Jun 2022 starts at 13:00',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Icon(
                      Icons.location_pin,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Katunayake',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Transform.rotate(
                        angle: 90 * pi / 180,
                        child: Transform.scale(
                          scale: 0.9,
                          child: Icon(Icons.linear_scale),
                        )),
                    Spacer(),
                    Text(
                      'reviews',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Icon(
                      Icons.my_location,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Kandy',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '5 people were joined',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 150,
                      height: 30,
                      margin: EdgeInsets.fromLTRB(16, 5, 0, 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        border: Border.all(
                          color: Colors.yellow,
                          width: 1.5,
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: Offset(0, 2),
                                        blurRadius: 3,
                                        spreadRadius: 0,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                    ),
                                  ),
                                  width: double.infinity,
                                  height: 450,
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 16, top: 16),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            '03 Jun 2022 starts at 13:00',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Icon(
                                            Icons.location_pin,
                                            color: Colors.yellow,
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            'Katunayake',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Transform.rotate(
                                              angle: 90 * pi / 180,
                                              child: Transform.scale(
                                                scale: 0.8,
                                                child: Icon(Icons.linear_scale),
                                              )),
                                          Spacer(),
                                          Text(
                                            'pets allowed',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      SizedBox(height: 0),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Transform.rotate(
                                              angle: 90 * pi / 180,
                                              child: Transform.scale(
                                                scale: 0.8,
                                                child: Icon(Icons.linear_scale),
                                              )),
                                          Spacer(),
                                          Text(
                                            'women only',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Icon(
                                            Icons.my_location,
                                            color: Colors.yellow,
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            'Kandy',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'smoking in the car',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          SizedBox(width: 16),
                                          Text(
                                            'Estimated arrival to Kegalle: 12.30 PM 21st Mar 22',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'Rs.2400',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 16),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 16, top: 10),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'People',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Column(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Kasun Perera',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 50),
                                                      child: Text(
                                                        'Driver',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 170),
                                                      child: Text(
                                                        'Deekay',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 140),
                                                      child: Text(
                                                        'Eric harrison',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 140),
                                                      child: Text(
                                                        'Eric harrison',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Center(
                          child: Text(
                            'More info',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 150,
                      height: 30,
                      margin: EdgeInsets.fromLTRB(16, 5, 0, 12),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: Offset(0, 2),
                                        blurRadius: 3,
                                        spreadRadius: 0,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                    ),
                                  ),
                                  width: double.infinity,
                                  height: 290,
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 16, top: 10),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'People',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 12),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 12),
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.grey.shade800,
                                              child: Stack(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.person,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            children: [
                                              Text(
                                                'Kasun Perera',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(height: 1),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 70),
                                                child: Text(
                                                  'Driver',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 120,
                                            height: 30,
                                            margin: EdgeInsets.fromLTRB(
                                                16, 5, 0, 12),
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              border: Border.all(
                                                color: Colors.yellow,
                                                width: 1.5,
                                              ),
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 255,
                                                        padding: EdgeInsets.all(
                                                            16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              16),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Text(
                                                                      'Rate',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Spacer(),
                                                                Container(
                                                                  height: 25,
                                                                  width: 25,
                                                                  child:
                                                                      CircleAvatar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .grey
                                                                            .shade300,
                                                                    child:
                                                                        IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Icon(
                                                                          Icons
                                                                              .close),
                                                                      iconSize:
                                                                          10,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    width: 16),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                                height: 20),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 20),
                                                              child: Row(
                                                                children: [
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: 15),
                                                            Container(
                                                              width: 332,
                                                              height: 80,
                                                              child: TextField(
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText:
                                                                      'Share your thoughts...',
                                                                  filled: true,
                                                                  fillColor: Colors
                                                                      .grey
                                                                      .shade200,
                                                                  border:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide
                                                                            .none,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                ),
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 14,
                                                                ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .text,
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 35,
                                                              width: 332,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .yellow,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Text(
                                                                  'Rate',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Center(
                                                child: Text(
                                                  'Rate',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 6),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 12),
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.grey.shade800,
                                              child: Stack(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.person,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 55),
                                                child: Text(
                                                  'Kasun Perera',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 1),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 75),
                                                child: Text(
                                                  'Co-passenger',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 120,
                                            height: 30,
                                            margin: EdgeInsets.fromLTRB(
                                                16, 5, 0, 12),
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              border: Border.all(
                                                color: Colors.yellow,
                                                width: 1.5,
                                              ),
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 255,
                                                        padding: EdgeInsets.all(
                                                            16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              16),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Text(
                                                                      'Rate',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Spacer(),
                                                                Container(
                                                                  height: 25,
                                                                  width: 25,
                                                                  child:
                                                                      CircleAvatar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .grey
                                                                            .shade300,
                                                                    child:
                                                                        IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Icon(
                                                                          Icons
                                                                              .close),
                                                                      iconSize:
                                                                          10,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    width: 16),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                                height: 20),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 20),
                                                              child: Row(
                                                                children: [
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: 15),
                                                            Container(
                                                              width: 332,
                                                              height: 80,
                                                              child: TextField(
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText:
                                                                      'Share your thoughts...',
                                                                  filled: true,
                                                                  fillColor: Colors
                                                                      .grey
                                                                      .shade200,
                                                                  border:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide
                                                                            .none,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                ),
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 14,
                                                                ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .text,
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 35,
                                                              width: 332,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .yellow,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Text(
                                                                  'Rate',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Center(
                                                child: Text(
                                                  'Rate',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 6),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 12),
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.grey.shade800,
                                              child: Stack(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.person,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 55),
                                                child: Text(
                                                  'Kasun Perera',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 1),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 75),
                                                child: Text(
                                                  'Co-passenger',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 120,
                                            height: 30,
                                            margin: EdgeInsets.fromLTRB(
                                                16, 5, 0, 12),
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              border: Border.all(
                                                color: Colors.yellow,
                                                width: 1.5,
                                              ),
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 255,
                                                        padding: EdgeInsets.all(
                                                            16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              16),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Text(
                                                                      'Rate',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Spacer(),
                                                                Container(
                                                                  height: 25,
                                                                  width: 25,
                                                                  child:
                                                                      CircleAvatar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .grey
                                                                            .shade300,
                                                                    child:
                                                                        IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Icon(
                                                                          Icons
                                                                              .close),
                                                                      iconSize:
                                                                          10,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    width: 16),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                                height: 20),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 20),
                                                              child: Row(
                                                                children: [
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: 15),
                                                            Container(
                                                              width: 332,
                                                              height: 80,
                                                              child: TextField(
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText:
                                                                      'Share your thoughts...',
                                                                  filled: true,
                                                                  fillColor: Colors
                                                                      .grey
                                                                      .shade200,
                                                                  border:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide
                                                                            .none,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                ),
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 14,
                                                                ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .text,
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 35,
                                                              width: 332,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .yellow,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Text(
                                                                  'Rate',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Center(
                                                child: Text(
                                                  'Rate',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 6),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 12),
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.grey.shade800,
                                              child: Stack(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.person,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 55),
                                                child: Text(
                                                  'Kasun Perera',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 1),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 75),
                                                child: Text(
                                                  'Co-passenger',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 120,
                                            height: 30,
                                            margin: EdgeInsets.fromLTRB(
                                                16, 5, 0, 12),
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              border: Border.all(
                                                color: Colors.yellow,
                                                width: 1.5,
                                              ),
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 255,
                                                        padding: EdgeInsets.all(
                                                            16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              16),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Text(
                                                                      'Rate',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Spacer(),
                                                                Container(
                                                                  height: 25,
                                                                  width: 25,
                                                                  child:
                                                                      CircleAvatar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .grey
                                                                            .shade300,
                                                                    child:
                                                                        IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Icon(
                                                                          Icons
                                                                              .close),
                                                                      iconSize:
                                                                          10,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    width: 16),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                                height: 20),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 20),
                                                              child: Row(
                                                                children: [
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: 15),
                                                            Container(
                                                              width: 332,
                                                              height: 80,
                                                              child: TextField(
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText:
                                                                      'Share your thoughts...',
                                                                  filled: true,
                                                                  fillColor: Colors
                                                                      .grey
                                                                      .shade200,
                                                                  border:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide
                                                                            .none,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                ),
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 14,
                                                                ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .text,
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 35,
                                                              width: 332,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .yellow,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Text(
                                                                  'Rate',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Center(
                                                child: Text(
                                                  'Rate',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Center(
                          child: Text(
                            'Rate',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 170,
            width: 380,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(0, 2),
                  blurRadius: 3,
                  spreadRadius: 0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      '03 Jun 2022 starts at 13:00',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Icon(
                      Icons.location_pin,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Katunayake',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Transform.rotate(
                        angle: 90 * pi / 180,
                        child: Transform.scale(
                          scale: 0.9,
                          child: Icon(Icons.linear_scale),
                        )),
                    Spacer(),
                    Text(
                      'reviews',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Icon(
                      Icons.my_location,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Kandy',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '5 people were joined',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 150,
                      height: 30,
                      margin: EdgeInsets.fromLTRB(16, 5, 0, 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        border: Border.all(
                          color: Colors.yellow,
                          width: 1.5,
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: Offset(0, 2),
                                        blurRadius: 3,
                                        spreadRadius: 0,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                    ),
                                  ),
                                  width: double.infinity,
                                  height: 450,
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 16, top: 16),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            '03 Jun 2022 starts at 13:00',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Icon(
                                            Icons.location_pin,
                                            color: Colors.yellow,
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            'Katunayake',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Transform.rotate(
                                              angle: 90 * pi / 180,
                                              child: Transform.scale(
                                                scale: 0.8,
                                                child: Icon(Icons.linear_scale),
                                              )),
                                          Spacer(),
                                          Text(
                                            'pets allowed',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      SizedBox(height: 0),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Transform.rotate(
                                              angle: 90 * pi / 180,
                                              child: Transform.scale(
                                                scale: 0.8,
                                                child: Icon(Icons.linear_scale),
                                              )),
                                          Spacer(),
                                          Text(
                                            'women only',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Icon(
                                            Icons.my_location,
                                            color: Colors.yellow,
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            'Kandy',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'smoking in the car',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          SizedBox(width: 16),
                                          Text(
                                            'Estimated arrival to Kegalle: 12.30 PM 21st Mar 22',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'Rs.2400',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 16),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 16, top: 10),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'People',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Column(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Kasun Perera',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 50),
                                                      child: Text(
                                                        'Driver',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 170),
                                                      child: Text(
                                                        'Deekay',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 140),
                                                      child: Text(
                                                        'Eric harrison',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 140),
                                                      child: Text(
                                                        'Eric harrison',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Center(
                          child: Text(
                            'More info',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 150,
                      height: 30,
                      margin: EdgeInsets.fromLTRB(16, 5, 0, 12),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: Offset(0, 2),
                                        blurRadius: 3,
                                        spreadRadius: 0,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                    ),
                                  ),
                                  width: double.infinity,
                                  height: 290,
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 16, top: 10),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'People',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 12),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 12),
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.grey.shade800,
                                              child: Stack(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.person,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            children: [
                                              Text(
                                                'Kasun Perera',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(height: 1),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 70),
                                                child: Text(
                                                  'Driver',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 120,
                                            height: 30,
                                            margin: EdgeInsets.fromLTRB(
                                                16, 5, 0, 12),
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              border: Border.all(
                                                color: Colors.yellow,
                                                width: 1.5,
                                              ),
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 255,
                                                        padding: EdgeInsets.all(
                                                            16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              16),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Text(
                                                                      'Rate',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Spacer(),
                                                                Container(
                                                                  height: 25,
                                                                  width: 25,
                                                                  child:
                                                                      CircleAvatar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .grey
                                                                            .shade300,
                                                                    child:
                                                                        IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Icon(
                                                                          Icons
                                                                              .close),
                                                                      iconSize:
                                                                          10,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    width: 16),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                                height: 20),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 20),
                                                              child: Row(
                                                                children: [
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: 15),
                                                            Container(
                                                              width: 332,
                                                              height: 80,
                                                              child: TextField(
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText:
                                                                      'Share your thoughts...',
                                                                  filled: true,
                                                                  fillColor: Colors
                                                                      .grey
                                                                      .shade200,
                                                                  border:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide
                                                                            .none,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                ),
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 14,
                                                                ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .text,
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 35,
                                                              width: 332,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .yellow,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Text(
                                                                  'Rate',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Center(
                                                child: Text(
                                                  'Rate',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 6),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 12),
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.grey.shade800,
                                              child: Stack(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.person,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 55),
                                                child: Text(
                                                  'Kasun Perera',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 1),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 75),
                                                child: Text(
                                                  'Co-passenger',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 120,
                                            height: 30,
                                            margin: EdgeInsets.fromLTRB(
                                                16, 5, 0, 12),
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              border: Border.all(
                                                color: Colors.yellow,
                                                width: 1.5,
                                              ),
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 255,
                                                        padding: EdgeInsets.all(
                                                            16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              16),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Text(
                                                                      'Rate',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Spacer(),
                                                                Container(
                                                                  height: 25,
                                                                  width: 25,
                                                                  child:
                                                                      CircleAvatar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .grey
                                                                            .shade300,
                                                                    child:
                                                                        IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Icon(
                                                                          Icons
                                                                              .close),
                                                                      iconSize:
                                                                          10,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    width: 16),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                                height: 20),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 20),
                                                              child: Row(
                                                                children: [
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: 15),
                                                            Container(
                                                              width: 332,
                                                              height: 80,
                                                              child: TextField(
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText:
                                                                      'Share your thoughts...',
                                                                  filled: true,
                                                                  fillColor: Colors
                                                                      .grey
                                                                      .shade200,
                                                                  border:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide
                                                                            .none,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                ),
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 14,
                                                                ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .text,
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 35,
                                                              width: 332,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .yellow,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Text(
                                                                  'Rate',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Center(
                                                child: Text(
                                                  'Rate',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 6),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 12),
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.grey.shade800,
                                              child: Stack(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.person,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 55),
                                                child: Text(
                                                  'Kasun Perera',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 1),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 75),
                                                child: Text(
                                                  'Co-passenger',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 120,
                                            height: 30,
                                            margin: EdgeInsets.fromLTRB(
                                                16, 5, 0, 12),
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              border: Border.all(
                                                color: Colors.yellow,
                                                width: 1.5,
                                              ),
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 255,
                                                        padding: EdgeInsets.all(
                                                            16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              16),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Text(
                                                                      'Rate',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Spacer(),
                                                                Container(
                                                                  height: 25,
                                                                  width: 25,
                                                                  child:
                                                                      CircleAvatar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .grey
                                                                            .shade300,
                                                                    child:
                                                                        IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Icon(
                                                                          Icons
                                                                              .close),
                                                                      iconSize:
                                                                          10,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    width: 16),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                                height: 20),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 20),
                                                              child: Row(
                                                                children: [
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: 15),
                                                            Container(
                                                              width: 332,
                                                              height: 80,
                                                              child: TextField(
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText:
                                                                      'Share your thoughts...',
                                                                  filled: true,
                                                                  fillColor: Colors
                                                                      .grey
                                                                      .shade200,
                                                                  border:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide
                                                                            .none,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                ),
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 14,
                                                                ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .text,
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 35,
                                                              width: 332,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .yellow,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Text(
                                                                  'Rate',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Center(
                                                child: Text(
                                                  'Rate',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 6),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 12),
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.grey.shade800,
                                              child: Stack(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.person,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 55),
                                                child: Text(
                                                  'Kasun Perera',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 1),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 75),
                                                child: Text(
                                                  'Co-passenger',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 120,
                                            height: 30,
                                            margin: EdgeInsets.fromLTRB(
                                                16, 5, 0, 12),
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              border: Border.all(
                                                color: Colors.yellow,
                                                width: 1.5,
                                              ),
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 255,
                                                        padding: EdgeInsets.all(
                                                            16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              16),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Text(
                                                                      'Rate',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Spacer(),
                                                                Container(
                                                                  height: 25,
                                                                  width: 25,
                                                                  child:
                                                                      CircleAvatar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .grey
                                                                            .shade300,
                                                                    child:
                                                                        IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Icon(
                                                                          Icons
                                                                              .close),
                                                                      iconSize:
                                                                          10,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    width: 16),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                                height: 20),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 20),
                                                              child: Row(
                                                                children: [
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: 15),
                                                            Container(
                                                              width: 332,
                                                              height: 80,
                                                              child: TextField(
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText:
                                                                      'Share your thoughts...',
                                                                  filled: true,
                                                                  fillColor: Colors
                                                                      .grey
                                                                      .shade200,
                                                                  border:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide
                                                                            .none,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                ),
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 14,
                                                                ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .text,
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 35,
                                                              width: 332,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .yellow,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Text(
                                                                  'Rate',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Center(
                                                child: Text(
                                                  'Rate',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Center(
                          child: Text(
                            'Rate',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 170,
            width: 380,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(0, 2),
                  blurRadius: 3,
                  spreadRadius: 0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      '03 Jun 2022 starts at 13:00',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Icon(
                      Icons.location_pin,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Katunayake',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Transform.rotate(
                        angle: 90 * pi / 180,
                        child: Transform.scale(
                          scale: 0.9,
                          child: Icon(Icons.linear_scale),
                        )),
                    Spacer(),
                    Text(
                      'reviews',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Icon(
                      Icons.my_location,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Kandy',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '5 people were joined',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 150,
                      height: 30,
                      margin: EdgeInsets.fromLTRB(16, 5, 0, 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        border: Border.all(
                          color: Colors.yellow,
                          width: 1.5,
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: Offset(0, 2),
                                        blurRadius: 3,
                                        spreadRadius: 0,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                    ),
                                  ),
                                  width: double.infinity,
                                  height: 450,
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 16, top: 16),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            '03 Jun 2022 starts at 13:00',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Icon(
                                            Icons.location_pin,
                                            color: Colors.yellow,
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            'Katunayake',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Transform.rotate(
                                              angle: 90 * pi / 180,
                                              child: Transform.scale(
                                                scale: 0.8,
                                                child: Icon(Icons.linear_scale),
                                              )),
                                          Spacer(),
                                          Text(
                                            'pets allowed',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      SizedBox(height: 0),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Transform.rotate(
                                              angle: 90 * pi / 180,
                                              child: Transform.scale(
                                                scale: 0.8,
                                                child: Icon(Icons.linear_scale),
                                              )),
                                          Spacer(),
                                          Text(
                                            'women only',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 12),
                                          Icon(
                                            Icons.my_location,
                                            color: Colors.yellow,
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            'Kandy',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'smoking in the car',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          SizedBox(width: 16),
                                          Text(
                                            'Estimated arrival to Kegalle: 12.30 PM 21st Mar 22',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'Rs.2400',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 16),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 16, top: 10),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'People',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Column(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Kasun Perera',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 50),
                                                      child: Text(
                                                        'Driver',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 170),
                                                      child: Text(
                                                        'Deekay',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 140),
                                                      child: Text(
                                                        'Eric harrison',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade800,
                                                    child: Stack(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons.person,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 140),
                                                      child: Text(
                                                        'Eric harrison',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 150),
                                                      child: Text(
                                                        'Co-passenger',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            '4.1',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 1),
                                                    Text(
                                                      '16 ratings',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 16),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Center(
                          child: Text(
                            'More info',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 150,
                      height: 30,
                      margin: EdgeInsets.fromLTRB(16, 5, 0, 12),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: Offset(0, 2),
                                        blurRadius: 3,
                                        spreadRadius: 0,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                    ),
                                  ),
                                  width: double.infinity,
                                  height: 290,
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 16, top: 10),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'People',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 12),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 12),
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.grey.shade800,
                                              child: Stack(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.person,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            children: [
                                              Text(
                                                'Kasun Perera',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(height: 1),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 70),
                                                child: Text(
                                                  'Driver',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 120,
                                            height: 30,
                                            margin: EdgeInsets.fromLTRB(
                                                16, 5, 0, 12),
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              border: Border.all(
                                                color: Colors.yellow,
                                                width: 1.5,
                                              ),
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 255,
                                                        padding: EdgeInsets.all(
                                                            16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              16),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Text(
                                                                      'Rate',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Spacer(),
                                                                Container(
                                                                  height: 25,
                                                                  width: 25,
                                                                  child:
                                                                      CircleAvatar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .grey
                                                                            .shade300,
                                                                    child:
                                                                        IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Icon(
                                                                          Icons
                                                                              .close),
                                                                      iconSize:
                                                                          10,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    width: 16),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                                height: 20),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 20),
                                                              child: Row(
                                                                children: [
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: 15),
                                                            Container(
                                                              width: 332,
                                                              height: 80,
                                                              child: TextField(
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText:
                                                                      'Share your thoughts...',
                                                                  filled: true,
                                                                  fillColor: Colors
                                                                      .grey
                                                                      .shade200,
                                                                  border:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide
                                                                            .none,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                ),
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 14,
                                                                ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .text,
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 35,
                                                              width: 332,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .yellow,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Text(
                                                                  'Rate',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Center(
                                                child: Text(
                                                  'Rate',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 6),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 12),
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.grey.shade800,
                                              child: Stack(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.person,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 55),
                                                child: Text(
                                                  'Kasun Perera',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 1),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 75),
                                                child: Text(
                                                  'Co-passenger',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 120,
                                            height: 30,
                                            margin: EdgeInsets.fromLTRB(
                                                16, 5, 0, 12),
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              border: Border.all(
                                                color: Colors.yellow,
                                                width: 1.5,
                                              ),
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 255,
                                                        padding: EdgeInsets.all(
                                                            16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              16),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Text(
                                                                      'Rate',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Spacer(),
                                                                Container(
                                                                  height: 25,
                                                                  width: 25,
                                                                  child:
                                                                      CircleAvatar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .grey
                                                                            .shade300,
                                                                    child:
                                                                        IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Icon(
                                                                          Icons
                                                                              .close),
                                                                      iconSize:
                                                                          10,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    width: 16),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                                height: 20),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 20),
                                                              child: Row(
                                                                children: [
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: 15),
                                                            Container(
                                                              width: 332,
                                                              height: 80,
                                                              child: TextField(
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText:
                                                                      'Share your thoughts...',
                                                                  filled: true,
                                                                  fillColor: Colors
                                                                      .grey
                                                                      .shade200,
                                                                  border:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide
                                                                            .none,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                ),
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 14,
                                                                ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .text,
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 35,
                                                              width: 332,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .yellow,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Text(
                                                                  'Rate',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Center(
                                                child: Text(
                                                  'Rate',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 6),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 12),
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.grey.shade800,
                                              child: Stack(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.person,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 55),
                                                child: Text(
                                                  'Kasun Perera',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 1),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 75),
                                                child: Text(
                                                  'Co-passenger',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 120,
                                            height: 30,
                                            margin: EdgeInsets.fromLTRB(
                                                16, 5, 0, 12),
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              border: Border.all(
                                                color: Colors.yellow,
                                                width: 1.5,
                                              ),
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 255,
                                                        padding: EdgeInsets.all(
                                                            16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              16),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Text(
                                                                      'Rate',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Spacer(),
                                                                Container(
                                                                  height: 25,
                                                                  width: 25,
                                                                  child:
                                                                      CircleAvatar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .grey
                                                                            .shade300,
                                                                    child:
                                                                        IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Icon(
                                                                          Icons
                                                                              .close),
                                                                      iconSize:
                                                                          10,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    width: 16),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                                height: 20),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 20),
                                                              child: Row(
                                                                children: [
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: 15),
                                                            Container(
                                                              width: 332,
                                                              height: 80,
                                                              child: TextField(
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText:
                                                                      'Share your thoughts...',
                                                                  filled: true,
                                                                  fillColor: Colors
                                                                      .grey
                                                                      .shade200,
                                                                  border:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide
                                                                            .none,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                ),
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 14,
                                                                ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .text,
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 35,
                                                              width: 332,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .yellow,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Text(
                                                                  'Rate',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Center(
                                                child: Text(
                                                  'Rate',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 6),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 12),
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.grey.shade800,
                                              child: Stack(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.person,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 55),
                                                child: Text(
                                                  'Kasun Perera',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 1),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 75),
                                                child: Text(
                                                  'Co-passenger',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 120,
                                            height: 30,
                                            margin: EdgeInsets.fromLTRB(
                                                16, 5, 0, 12),
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              border: Border.all(
                                                color: Colors.yellow,
                                                width: 1.5,
                                              ),
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 255,
                                                        padding: EdgeInsets.all(
                                                            16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              16),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Text(
                                                                      'Rate',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Spacer(),
                                                                Container(
                                                                  height: 25,
                                                                  width: 25,
                                                                  child:
                                                                      CircleAvatar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .grey
                                                                            .shade300,
                                                                    child:
                                                                        IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Icon(
                                                                          Icons
                                                                              .close),
                                                                      iconSize:
                                                                          10,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    width: 16),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                                height: 20),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 20),
                                                              child: Row(
                                                                children: [
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: 15),
                                                            Container(
                                                              width: 332,
                                                              height: 80,
                                                              child: TextField(
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText:
                                                                      'Share your thoughts...',
                                                                  filled: true,
                                                                  fillColor: Colors
                                                                      .grey
                                                                      .shade200,
                                                                  border:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide
                                                                            .none,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                ),
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 14,
                                                                ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .text,
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 35,
                                                              width: 332,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .yellow,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Text(
                                                                  'Rate',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Center(
                                                child: Text(
                                                  'Rate',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Center(
                          child: Text(
                            'Rate',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildTripContainer(String title) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
