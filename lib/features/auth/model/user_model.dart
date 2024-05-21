
class UserModel {
  String? username;
  String? password;
  String? userId;

  UserModel({this.username, this.password, this.userId});

  UserModel.fromJson(Map<String, dynamic> json) {
    if(json["username"] is String) {
      username = json["username"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["userId"] is String) {
      userId = json["userId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["username"] = username;
    data["password"] = password;
    data["userId"] = userId;
    return data;
  }
}