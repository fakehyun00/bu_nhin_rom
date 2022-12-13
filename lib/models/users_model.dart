class UserModel {
  String? uid;
  String? email;
  String? username;
  String? password;

  UserModel({this.uid, this.email, this.username, this.password});

  //data serve
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      username: map['username'],
      password: map['password'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'username': username,
      'password': password,
    };
  }
}
