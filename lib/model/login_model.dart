
class LoginResponseModel {
  List<Message>? Errors;
   String? token;
   Userinfo? user1;
    LoginResponseModel({ this.Errors,this.token,this.user1});

  factory LoginResponseModel.fromJson(Map<String, dynamic> parsedJson){
    print(parsedJson['token']);
          var list = parsedJson['errors'] as List;
        List<Message> MessagesList = list.map((i) => Message.fromJson(i)).toList();

    return LoginResponseModel(
        token: parsedJson['token'] ?? 'llll',
        user1: Userinfo.fromJson(parsedJson['user']),
        Errors: MessagesList ?? []
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