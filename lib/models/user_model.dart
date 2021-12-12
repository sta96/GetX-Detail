class Placeholer {
  Placeholer({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
  });

  int id;
  String name;
  String username;
  String email;
  String phone;
  String website;

  factory Placeholer.fromJson(Map<String, dynamic> json) => Placeholer(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        phone: json["phone"],
        website: json["website"],
      );
}
