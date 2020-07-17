import 'package:flutter/material.dart';
import 'package:flutter_ytsubs/Data/trip.dart';
import 'package:flutter_ytsubs/Models/textstyles.dart';
import 'package:intl/intl.dart';

class HomeView extends StatelessWidget {
  final List<Trip> tripsList = [
    Trip("New York", 200.00, DateTime.now(), DateTime.now(), "Car"),
    Trip("DC", 100.00, DateTime.now(), DateTime.now(), "Plane"),
    Trip("LA", 99.00, DateTime.now(), DateTime.now(), "Car"),
    Trip("Austin", 300.00, DateTime.now(), DateTime.now(), "Plane")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          itemCount: tripsList.length,
          itemBuilder: (BuildContext context, int index) =>
              buildTripCard(context, index)),
    );
  }

  Widget buildTripCard(BuildContext context, int index) {
    final trip = tripsList[index];

    return new Container(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                  child: Row(
                    children: [
                      Text(trip.title,
                        style: new TextStyle(fontSize: 30.0, fontFamily: "Helvetica"),),
                      Spacer(),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                  child: Row(
                    children: [
                      Text("${DateFormat('dd/MM/yy').format(trip.startDate).toString()} - "
                      "${DateFormat('dd/MM/yy').format(trip.endDate).toString()}"),
                      Spacer(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                  child: Row(
                    children: [
                      Text("\$${trip.budget.toStringAsFixed(2)}",
                        style: new TextStyle(fontSize: 20.0, fontFamily: "Helvetica"),),
                      Spacer(),
                      Text(trip.travelType),
                    ],
                  ),
                )
        ],
      ),
          ),
    ));
  }
}
