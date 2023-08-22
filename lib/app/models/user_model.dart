class UserModel {
  final String name;
  final String email;
  final String profilePic;
  final String uid;
  final String token;

  UserModel({
    required this.name,
    required this.email,
    required this.profilePic,
    required this.uid,
    required this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        name: json['name'],
        email: json['email'],
        profilePic: json['profilePic'],
        uid: json['uid'],
        token: json['token']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['profilePic'] = profilePic;
    data['uid'] = uid;
    data['token'] = token;

    return data;
  }

  UserModel copyWith({
    String? email,
    String? name,
    String? profilePic,
    String? uid,
    String? token,
  }) {
    return UserModel(
      email: email ?? this.email,
      name: name ?? this.name,
      profilePic: profilePic ?? this.profilePic,
      uid: uid ?? this.uid,
      token: token ?? this.token,
    );
  }
}
