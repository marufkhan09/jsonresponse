class Passenger {
  int id;
  int checked_bags;
  int gender;

  Passenger({required this.id, required this.checked_bags,required this.gender});

  factory Passenger.fromJson(Map<String, dynamic> json) {
    return Passenger(id: json['id'], checked_bags: json['checked_bags'],gender: json['gender']);
  }
}

class Four {
  final int id;
  final String flight_name;
  List<Passenger> passenger;

  Four({required this.id, required this.flight_name, required this.passenger});

  factory Four.fromJson(Map<String, dynamic> json) {
    var list = json['passenger'] as List;
    List<Passenger> PassengerList =
        list.map((passenger) => Passenger.fromJson(passenger)).toList();
    return Four(
        id: json['id'],
        flight_name: json['flight_name'],
        passenger: PassengerList);
  }
}
