import 'dart:convert';

List<Post> postFromCustomJson(String str) => List<Post>.from(json.decode(str));

class Post {
  Post({
    this.body,
    this.id,
    this.title,
    this.userId,
  });

  int? userId;
  int? id;
  String? title;
  String? body;

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        body: json["body"],
        userId: json["userId"],
        id: json["id"],
        title: json["title"]);
  }
}
