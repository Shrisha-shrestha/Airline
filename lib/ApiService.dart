import 'package:airline/model/login_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'model/register_model.dart';

class APIService{

  Future<Either<LoginResponseModel_success, LoginResponseModel_failure>> login(LoginRequestModel requestmodel)async{
    String url="http://3.109.218.205/api/v1/auth";
    final response = await http.post(Uri.parse(url),body :requestmodel.toJson()); // toJson ---> user ko email and password into map for http post
    if(response.statusCode == 200 ){
      LoginResponseModel_success responseModel = LoginResponseModel_success.fromJson(json.decode(response.body));//fromJson ----> firta deko lai user ra token ma map garne or error ma
     return Left(responseModel);
    }
    else if( response.statusCode == 400){
      LoginResponseModel_failure responseModel = LoginResponseModel_failure.fromJson(json.decode(response.body));//fromJson ----> firta deko lai user ra token ma map garne or error ma
      return Right(responseModel);    }
    else{
       throw Exception('Error fetching data');
       }
    }

  Future<Either<RegisterResponseModel_success,RegisterResponseModel_pre_exist>> register(RegisterRequestModel  requestmodel)async{
    String url="http://3.109.218.205/api/v1/user/register";
    final response = await http.post(Uri.parse(url),body :requestmodel.toJson()); // toJson ---> user ko email and password into map for http post
    if(response.statusCode == 200 ){
      RegisterResponseModel_success responseModel = RegisterResponseModel_success.fromJson(json.decode(response.body));//fromJson ----> firta deko lai user ra token ma map garne or error ma
      return Left(responseModel);
    }
    if( response.statusCode == 400){
      RegisterResponseModel_pre_exist responseModel = RegisterResponseModel_pre_exist.fromJson(json.decode(response.body));//fromJson ----> firta deko lai user ra token ma map garne or error ma
      return Right(responseModel);    }
    else{
      throw Exception('Error fetching data');
    }
  }

  Future<Either<PwResetResponseModel_success,PwResetResponseModel_failure>> reset(PwResetRequestModel  pwrequestmodel)async{
    String url="http://3.109.218.205/api/v1/auth/forget-password";
    final response = await http.post(Uri.parse(url),body :pwrequestmodel.toJson()); // toJson ---> user ko email and password into map for http post
    if(response.statusCode == 200 ){
      PwResetResponseModel_success responseModel = PwResetResponseModel_success.fromJson(json.decode(response.body));//fromJson ----> firta deko lai user ra token ma map garne or error ma
      return Left(responseModel);
    }
    if( response.statusCode == 400){
      PwResetResponseModel_failure responseModel = PwResetResponseModel_failure.fromJson(json.decode(response.body));//fromJson ----> firta deko lai user ra token ma map garne or error ma
      return Right(responseModel);    }
    else{
      throw Exception('Error fetching data');
    }
  }


  }
