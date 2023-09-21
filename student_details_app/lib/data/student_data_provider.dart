import 'package:dio/dio.dart';

const String baseUrl = 'http://192.168.29.250:3000/students';

class StudentDataProvider {
  Dio dio = Dio(BaseOptions(baseUrl: baseUrl));
  Future<Response?> getAllStudents() async {
    try {
      final response = await dio.get('/');
      if (response.statusCode == 200) {
        return response;
      } else {
        return null;
      }
    } on DioException catch (e) {
      if (e.response!.statusCode == 500) {
        return e.response;
      } else {
        return null;
      }
    }
  }
}
