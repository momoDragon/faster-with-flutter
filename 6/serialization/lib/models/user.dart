class User {
  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
  });
  late final int id;
  late final String name;
  late final String username;
  late final String email;
  
  User.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['id'] = id;
    json['name'] = name;
    json['username'] = username;
    json['email'] = email;
    return json;
  }
}