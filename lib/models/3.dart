class Property {
  double width;
  double height;

  Property({required this.width, required this.height});

  factory Property.fromJson(Map<String, dynamic> json) {
    return Property(width: json['width'], height: json['height']);
  }
}

class Three {
  final int id;
  final String name;
  Property property;

  Three({required this.id, required this.name, required this.property});

  factory Three.fromJson(Map<String, dynamic> json) {
    return Three(
        id: json['id'], name: json['name'], property: Property.fromJson(json['property']));
  }
}
