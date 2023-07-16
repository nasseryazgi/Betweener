class ActiveSharing {
  int userId;
  String type;
  int id;

  ActiveSharing({
    required this.userId,
    required this.type,
    required this.id,
  });

  ActiveSharing.fromJson(Map<String, dynamic> json)
      : userId = json['user_id'],
        type = json['type'],
        id = json['id'];
}
