//@dart=2.9
import 'package:dio/dio.dart';
import 'package:api_test/network/requests/login_request.dart';
import 'package:api_test/network/responses/login_response.dart';
import 'package:retrofit/retrofit.dart';

part 'service.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @POST('https://khaled-cars.magdsoft.com/api/login')
  Future<LoginResponse> login(
      @Body() LoginRequest loginRequest,
      );

}
