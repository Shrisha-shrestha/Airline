import 'package:airline/model/login_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class APIService{
  Future<LoginResponseModel> login(LoginRequestModel requestmodel)async{
    String url="http://3.109.218.205/api/v1/auth";
    final response = await http.post(Uri.parse(url),body :requestmodel.toJson());
    if(response.statusCode == 200 || response.statusCode == 400){
      print('Status Code : ${response.statusCode} ');
      print(response.body);
      LoginResponseModel responseModel = LoginResponseModel.fromJson(json.decode(response.body));
     return responseModel;
    }
    else{
      throw Exception('Faild to load Data');
    }
  }
}