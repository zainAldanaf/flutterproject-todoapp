class Notes {
  int? id;
  String? name;
  String? details;

  Notes({
    this.id,
    required this.name,
    required this.details
  });

  Notes.fromMap(Map map) {
    id = map['id'];
    name = map['name'];
    details = map['details'];

  }
  toMap() {
    return {"name": name,"details":details};
  }
}