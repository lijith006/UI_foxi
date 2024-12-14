class User {
  int? id;
  String? name;
  String? contact;
  String? guardian;
  String? info;

  User({this.id, this.name, this.contact, this.guardian, this.info});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'contact': contact,
      'guardian': guardian,
      'info': info,
    };
  }
}
