class User {
  int? id;
  String? name;
  String? age;
  String? place;

  String? contact;

  userMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id ?? null;
    mapping['name'] = name!;
    mapping['age'] = age!;
    mapping['contact'] = contact!;
    mapping['place'] = place!;

    return mapping;
  }
}
