import 'package:dio/dio.dart';
import 'package:student_details_app/domain/models/add_user_model/add_user_model.dart';

const String baseUrl = 'http://10.0.2.2:3000/students';

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

  Future<Response?> addStudent(AddUserModel addUserModel) async {
    try {
      final response = await dio.post('/add', data: addUserModel.toJson());
      return response;
    } on DioException catch (e) {
      return e.response;
    }
  }

  Future<Response?> deleteStudent(String id) async {
    try {
      final response = await dio.delete('/delete/$id');
      return response;
    } on DioException catch (e) {
      return e.response;
    }
  }
}
