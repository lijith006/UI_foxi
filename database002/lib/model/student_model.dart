class Student {
  int? id;
  String? name;
  String? address;
  String? number;
  String image = '';

  studentMap() {
    // ignore: prefer_collection_literals
    var mapping = Map<String, dynamic>();
    mapping['id'] = id ?? null;
    mapping['name'] = name!;
    mapping['address'] = address!;
    mapping['number'] = number!;
    mapping['image'] = image;
    return mapping;
  }
}
