class RegisterResponseModel_pre_exist{
  List<Message>? Errors;
  RegisterResponseModel_pre_exist({ this.Errors});

  factory RegisterResponseModel_pre_exist.fromJson(Map<String, dynamic> parsedJson){
    List<Message>? MessagesList;
    var list = parsedJson['errors'] as List;
    MessagesList = list.map((i) => Message.fromJson(i)).toList();

    return RegisterResponseModel_pre_exist(
        Errors: MessagesList != null ? MessagesList : []
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

class RegisterResponseModel_success {
  String? token;
  Userinfo? user1;
  RegisterResponseModel_success({this.token,this.user1});

  factory RegisterResponseModel_success.fromJson(Map<String, dynamic> parsedJson){ //implement constructors that do not produce new instances of an existing class.

    return RegisterResponseModel_success(
      token: parsedJson['token'] != null ? parsedJson['token'] :"Login First" ,
      user1: Userinfo.fromJson(parsedJson['user']),
    );
  }
}
class Userinfo{
  int? id;String? firstName;String? lastName;String? email; String? createdAt;  String? updatedAt;
  Userinfo({ this.email, this.id, this.createdAt,this.firstName,this.lastName, this.updatedAt});

  factory Userinfo.fromJson(Map<String, dynamic> parsedJson){
    return Userinfo(email: parsedJson['email'], id:parsedJson['id'],  createdAt:parsedJson['createdAt'] ,
        firstName:parsedJson['firstName'] ,   lastName: parsedJson['lastName'],
        updatedAt: parsedJson['updatedAt']);
  }
}



class RegisterRequestModel {
  String? firstName;
  String? lastName;
  String? email;
  String? password;

  RegisterRequestModel({ this.email,  this.password,this.firstName,this.lastName});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'firstName': firstName!.trim(),
      'lastName': lastName!.trim(),
      'email': email!.trim(),
      'password': password!.trim(),
        };
    return map;
  }
}