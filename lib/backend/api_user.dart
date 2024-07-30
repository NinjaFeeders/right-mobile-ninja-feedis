import 'package:dio/dio.dart';
import 'package:feedis/model/user_login.dart';
import 'package:feedis/page/feed.dart';
import 'package:feedis/page/home.dart';
import 'package:flutter/material.dart';

class ApiClient{
  final Dio _dio = Dio();

  // User register

 Future<Response> register(String nome, String username, String password) async{
  try{
    Response response = await _dio.post(
      'url',
      data: {
        'nome' : nome,
        'username' : username,
        'password' : password
      }
    );
    return response.data;
  }on DioException catch(e){
    return e.response!.data;
  }
 }

 // User login

 // esse contexto é apenas temporario

 Future<UserLogin> postUserLogin(String username, String password, BuildContext context) async{



    // Vou simular um login de teste para o design

    if(username == 'admin' || password == 'admin'){
      
      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()),);
    }else{

    try{
      Response response = await _dio.post(
        'url',
        data: {
          'username': username,
          'password': password
        },
        
      );
      return response.data;
    }on DioException catch (e){
      return e.response!.data;
    }
    }
    throw Exception('não deu');
 }}