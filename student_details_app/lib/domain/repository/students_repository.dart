import 'package:student_details_app/data/student_data_provider.dart';
import 'package:student_details_app/domain/models/all_students_model/all_students_model.dart';
import 'package:student_details_app/domain/models/all_students_model/student.dart';
import 'package:student_details_app/util/failures.dart';
import 'package:dartz/dartz.dart';

class StudentsRepository {
  StudentDataProvider studentDataProvider = StudentDataProvider();
  Future<Either<Failures, AllStudentsModel>> getAllStudentsFromAPI() async {
    try {
      final response = await studentDataProvider.getAllStudents();
      if (response?.statusCode == 200) {
        return Right(AllStudentsModel.fromJson(response?.data));
      } else if (response?.statusCode == 500) {
        return Right(AllStudentsModel.fromJson(response?.data));
      } else {
        return const Left(Failures.clientError());
      }
    } catch (e) {
      return const Left(Failures.clientError());
    }
  }
}
