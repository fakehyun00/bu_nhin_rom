class UserModel {
  String? uid;
  String? email;
  String? username;
  String? password;
  String? description;

  UserModel(
      {this.uid, this.email, this.username, this.password, this.description});

  //data serve
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      username: map['username'],
      password: map['password'],
      description: map['description'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'username': username,
      'password': password,
      'description': description,
    };
  }
}
