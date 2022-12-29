import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/auto_model.dart';
part 'my_retrofit.g.dart';

@RestApi(baseUrl: 'https://gorest.co.in/public-api')
abstract class ApiManager {
  factory ApiManager(Dio dio, {String? baseUrl}) = _ApiManager;

  @GET('/users')
  Future<AutoApi> getUSers();
}
