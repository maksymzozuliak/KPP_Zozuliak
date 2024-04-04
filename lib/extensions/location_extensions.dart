import 'package:adopt_a_pet/data/models/location.dart';

extension LocationExtensions on Location {
  static final Location _all = Location(
    name: "All",
    searchName: null,
  );

  static final List<Location> _locationList = [
    _all,
    Location(name: "Alabama, USA", searchName: "Alabama"),
    Location(name: "Alaska, USA", searchName: "Alaska"),
    Location(name: "Arizona, USA", searchName: "Arizona"),
    Location(name: "Arkansas, USA", searchName: "Arkansas"),
    Location(name: "California, USA", searchName: "California"),
    Location(name: "Colorado, USA", searchName: "Colorado"),
    Location(name: "Connecticut, USA", searchName: "Connecticut"),
    Location(name: "Delaware, USA", searchName: "Delaware"),
    Location(name: "Florida, USA", searchName: "Florida"),
    Location(name: "Georgia, USA", searchName: "Georgia"),
    Location(name: "Hawaii, USA", searchName: "Hawaii"),
    Location(name: "Idaho, USA", searchName: "Idaho"),
    Location(name: "Illinois, USA", searchName: "Illinois"),
    Location(name: "Indiana, USA", searchName: "Indiana"),
    Location(name: "Iowa, USA", searchName: "Iowa"),
    Location(name: "Kansas, USA", searchName: "Kansas"),
    Location(name: "Kentucky, USA", searchName: "Kentucky"),
    Location(name: "Louisiana, USA", searchName: "Louisiana"),
    Location(name: "Maine, USA", searchName: "Maine"),
    Location(name: "Maryland, USA", searchName: "Maryland"),
    Location(name: "Massachusetts, USA", searchName: "Massachusetts"),
    Location(name: "Michigan, USA", searchName: "Michigan"),
    Location(name: "Minnesota, USA", searchName: "Minnesota"),
    Location(name: "Mississippi, USA", searchName: "Mississippi"),
    Location(name: "Missouri, USA", searchName: "Missouri"),
    Location(name: "Montana, USA", searchName: "Montana"),
    Location(name: "Nebraska, USA", searchName: "Nebraska"),
    Location(name: "Nevada, USA", searchName: "Nevada"),
    Location(name: "New Hampshire, USA", searchName: "New Hampshire"),
    Location(name: "New Jersey, USA", searchName: "New Jersey"),
    Location(name: "New Mexico, USA", searchName: "New Mexico"),
    Location(name: "New York, USA", searchName: "New York"),
    Location(name: "North Carolina, USA", searchName: "North Carolina"),
    Location(name: "North Dakota, USA", searchName: "North Dakota"),
    Location(name: "Ohio, USA", searchName: "Ohio"),
    Location(name: "Oklahoma, USA", searchName: "Oklahoma"),
    Location(name: "Oregon, USA", searchName: "Oregon"),
    Location(name: "Pennsylvania, USA", searchName: "Pennsylvania"),
    Location(name: "Rhode Island, USA", searchName: "Rhode Island"),
    Location(name: "South Carolina, USA", searchName: "South Carolina"),
    Location(name: "South Dakota, USA", searchName: "South Dakota"),
    Location(name: "Tennessee, USA", searchName: "Tennessee"),
    Location(name: "Texas, USA", searchName: "Texas"),
    Location(name: "Utah, USA", searchName: "Utah"),
    Location(name: "Vermont, USA", searchName: "Vermont"),
    Location(name: "Virginia, USA", searchName: "Virginia"),
    Location(name: "Washington, USA", searchName: "Washington"),
    Location(name: "West Virginia, USA", searchName: "West Virginia"),
    Location(name: "Wisconsin, USA", searchName: "Wisconsin"),
    Location(name: "Wyoming, USA", searchName: "Wyoming"),
  ];

  static Location all() {
    return _all;
  }

  static List<Location> locationList() {
    // List<Location> sortedList = List.from(_locationList);
    // sortedList.sort((a, b) => a.name.compareTo(b.name));
    return _locationList;
  }
}
