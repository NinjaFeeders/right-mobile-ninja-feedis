// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

UserLogin userFromJson(String str) => UserLogin.fromJson(json.decode(str));

String userToJson(UserLogin data) => json.encode(data.toJson());

class UserLogin {
    String user;
    String password;

    UserLogin({
        required this.user,
        required this.password,
    });

    factory UserLogin.fromJson(Map<String, dynamic> json) => UserLogin(
        user: json["user"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "password": password,
    };
}
