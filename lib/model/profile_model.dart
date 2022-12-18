class ProfileResponseModel_failure{
  String? msg;
  ProfileResponseModel_failure({ this.msg});

  factory ProfileResponseModel_failure.fromJson(Map<String, dynamic> parsedJson){

    return ProfileResponseModel_failure(
      msg: parsedJson['msg']
    );
  }
}

class Message {
  final String? msg;
  Message({this.msg});

  factory Message.fromJson(Map<String, dynamic> parsedJson){
    return Message(
        msg:parsedJson['msg']
    );
  }
}

class ProfileResponseModel_success {
  List<Profile> profiles;
  ProfileResponseModel_success({required this.profiles});

  factory ProfileResponseModel_success.fromJson(List<dynamic> parsedJson) {
    List<Profile> profiles = <Profile>[];
    profiles = parsedJson.map((i)=>Profile.fromJson(i)).toList();

    return new ProfileResponseModel_success(
      profiles: profiles,
    );
  }
}
class Profile{
  int? id;String? firstName;String? lastName;String? email; String? createdAt;  String? updatedAt;
  Profile({ this.email, this.id, this.createdAt,this.firstName,this.lastName, this.updatedAt});

  factory Profile.fromJson(Map<String, dynamic> parsedJson){
    return Profile(email: parsedJson['email'], id:parsedJson['id'],  createdAt:parsedJson['createdAt'] ,
        firstName:parsedJson['firstName'] ,   lastName: parsedJson['lastName'],
        updatedAt: parsedJson['updatedAt']);
  }
}
