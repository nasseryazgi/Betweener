class UserResponse {
  User user;
  String token;

  UserResponse({
    required this.user,
    required this.token,
  });

  UserResponse.fromJson(Map<String, dynamic> json)
      : user = User.fromJson(json['user']),
        token = json['token'];
}

class User {
  int id;
  String name;
  String email;
  DateTime? emailVerifiedAt;

  int isActive;
  String? country;
  String? ip;
  double long;
  double lat;
  String fcm;

  User({
    required this.id,
    required this.name,
    required this.email,
    this.emailVerifiedAt,

    required this.isActive,
    this.country,
    this.ip,
    required this.long,
    required this.lat,
    required this.fcm,
  });

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        email = json['email'],
        emailVerifiedAt = json['email_verified_at'] != null
            ? DateTime.parse(json['email_verified_at'])
            : null,

        isActive = json['isActive'],
        country = json['country'],
        ip = json['ip'],
        long = json['long'],
        lat = json['lat'],
        fcm = json['fcm'];
}
