//@dart=2.9
import 'package:api_test/network/pages/login.dart';
import 'package:api_test/network/services/service.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

RestClient client;
Dio dio;

Future<void> main() async {
  dio = Dio();
  dio.interceptors.add(
    DioCacheManager(
      CacheConfig(
        defaultMaxAge: const Duration(minutes: 15),
        defaultMaxStale: const Duration(minutes: 15),
      ),
    ).interceptor,
  );
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (RequestOptions options) async {
        // Both apis require this parameter
        debugPrintThrottled(options.method + ' ' + options.path);
        debugPrintThrottled(options.uri.toString());
        debugPrintThrottled(options.queryParameters.toString());
        return options;
      },
      onResponse: (Response response) async {
        debugPrintThrottled(response.data.toString());
        return response;
      },
    ),
  );

  client = RestClient(dio);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
    );
  }
}

