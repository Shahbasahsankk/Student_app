class UserModel {
  String? uid;
  String? email;
  String? firstName;

  UserModel({
    required this.uid,
    required this.email,
    required this.firstName,
  });
  // data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
    );
  }
  // data to server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
    };
  }
}
