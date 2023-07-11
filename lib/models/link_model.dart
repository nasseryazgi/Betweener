class LinkResponse {
  int? totalResults;
  List<Link> results = [];

  LinkResponse.fromJson(Map<String, dynamic> json) {
    //you can use your custom json field depend on api response
    // totalResults = json['total_results'];
    if (json['links'] != null) {
      json['links'].forEach((v) {
        results.add(Link.fromJson(v));
      });
    }
  }
}

class Link {
 late int id;
 late String title;
 late String link;
 late String username;
 late int isActive;
 late int userId;
 late String createdAt;
 late String updatedAt;

  // Link(
  //     {required this.id,
  //      required this.title,
  //      required this.link,
  //      required this.username,
  //      required this.isActive,
  //      required this.userId,
  //      required this.createdAt,
  //      required this.updatedAt});

  Link.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    link = json['link'];
    username = json['username'];
    isActive = json['isActive'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['link'] = this.link;
    data['username'] = this.username;
    data['isActive'] = this.isActive;
    data['user_id'] = this.userId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
