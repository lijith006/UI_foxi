class User {
  int? id;
  String? name;
  String? age;
  String? contact;
  String? description;

  // creating map for convert user details into map
  userMap() {
    // ignore: prefer_collection_literals
    var mappingStudent = Map<String, dynamic>();
    // ignore: unnecessary_null_in_if_null_operators
    mappingStudent['id'] = id ?? null;
    mappingStudent['name'] = name!;
    mappingStudent['age'] = age!;
    mappingStudent['contact'] = contact!;
    mappingStudent['description'] = description!;
    return mappingStudent;
  }
}
