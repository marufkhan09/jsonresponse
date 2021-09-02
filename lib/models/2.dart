class Two {
  final String name;
  final List<String> classes;

  Two({required this.name,required this.classes});

  factory Two.fromJson(Map<String, dynamic> json) {
    var classesFromJson = json['classes'];
    List<String>classList = classesFromJson.cast<String>();
    return Two(name: json['name'], classes: classList);
  }


}