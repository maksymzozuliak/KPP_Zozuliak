import 'dart:ffi';

import 'package:adopt_a_pet/data/models/location.dart';
import 'package:adopt_a_pet/ui/views/pet_screen/location_widget.dart';
import 'package:adopt_a_pet/ui/views/pet_screen/pet_search_bar.dart';
import 'package:adopt_a_pet/ui/widgets/text/body3_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationDialog extends StatelessWidget {
  final Location selectedLocation;
  final Function(String) onSearchButtonTap;
  final Function(Location) onLocationSelected;
  final TextEditingController textEditingController = TextEditingController();
  final List<Location> locationList;

  LocationDialog({
    super.key,
    required this.selectedLocation,
    required this.onSearchButtonTap,
    required this.onLocationSelected,
    required this.locationList,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            color: const Color(0xFFF7F7F7),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: PetSearchBar(
                  height: 48.0,
                  onSearchButtonTap: onSearchButtonTap,
                ),
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: locationList.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      onLocationSelected(locationList[index]);
                      Navigator.pop(context);
                    },
                    child: Body3Text(
                      text: locationList[index].name,
                      textColor: Colors.black,
                    ),
                  );
                },
              )),
            ],
          ),
        ),
      ],
    );
  }
}
