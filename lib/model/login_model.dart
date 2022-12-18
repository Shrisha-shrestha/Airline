
class LoginResponseModel_success {
   String? token;
   Userinfo? user1;
  LoginResponseModel_success({this.token,this.user1});

  factory LoginResponseModel_success.fromJson(Map<String, dynamic> parsedJson){ //implement constructors that do not produce new instances of an existing class.

    return LoginResponseModel_success(
        token: parsedJson['token'] != null ? parsedJson['token'] :"Login First" ,
        user1: Userinfo.fromJson(parsedJson['user']),
    );
  }
}
class Userinfo{
  int? id;String? firstName;String? lastName;String? email; int? role_id;
  String? gender;  String? address;  String? dob;  int? phone;  String? createdAt;  String? updatedAt;
  Userinfo({ this.email, this.id, this.address, this.createdAt, this.dob,
    this.firstName, this.gender, this.lastName, this.phone, this.role_id, this.updatedAt});

  factory Userinfo.fromJson(Map<String, dynamic> parsedJson){
    return Userinfo(email: parsedJson['email'], id:parsedJson['id'], address: parsedJson['address'], createdAt:parsedJson['createdAt'] ,
        dob: parsedJson['dob'],firstName:parsedJson['firstName'] ,  gender:parsedJson['gender'] , lastName: parsedJson['lastName'],
        phone: parsedJson['phone'], role_id: parsedJson['role_id'],updatedAt: parsedJson['updatedAt']);
  }
}


class LoginResponseModel_failure {
  List<Message>? Errors;
  LoginResponseModel_failure({ this.Errors});

  factory LoginResponseModel_failure.fromJson(Map<String, dynamic> parsedJson){ //implement constructors that do not produce new instances of an existing class.
      List<Message>? MessagesList;
      var list = parsedJson['errors'] as List;
    MessagesList = list.map((i) => Message.fromJson(i)).toList();

    return LoginResponseModel_failure(
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




class LoginRequestModel {
  String? email;
   String? password;

  LoginRequestModel({ this.email,  this.password});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email!.trim(), //to remove whitespace
      'password': password!.trim(),
    };
    return map;
  }
}

class PwResetResponseModel_failure {
  List<Message>? Errors;
  PwResetResponseModel_failure({ this.Errors});

  factory PwResetResponseModel_failure.fromJson(Map<String, dynamic> parsedJson){ //implement constructors that do not produce new instances of an existing class.
    List<Message>? MessagesList;
    var list = parsedJson['errors'] as List;
    MessagesList = list.map((i) => Message.fromJson(i)).toList();

    return PwResetResponseModel_failure(
        Errors: MessagesList != null ? MessagesList : []
    );
  }
}

class PwResetResponseModel_success {
  int? code;
  String? msg;

  PwResetResponseModel_success ({this.msg,this.code});

  factory PwResetResponseModel_success .fromJson(Map<String, dynamic> parsedJson){ //implement constructors that do not produce new instances of an existing class.
    return PwResetResponseModel_success (
      msg: parsedJson['msg'] != null ? parsedJson['msg'] :"Login First" ,
      code: parsedJson['code'] != null ? parsedJson['code'] :"Login First" ,
    );
  }
}

class PwResetRequestModel {
  String? email;

  PwResetRequestModel ({ this.email});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email!.trim(),
    };
    return map;
  }
}