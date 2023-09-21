
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student_details_app/domain/models/all_students_model/all_students_model.dart';
import 'package:student_details_app/domain/models/all_students_model/student.dart';
import 'package:student_details_app/domain/repository/students_repository.dart';

part 'students_state.dart';
part 'students_cubit.freezed.dart';

class StudentsCubit extends Cubit<StudentsState> {
  StudentsRepository studentsRepository = StudentsRepository();
  StudentsCubit() : super(StudentsState.initial());
  Future<void> getAllStudent() async {
    emit(state.copyWith(isLoading: true));
    await studentsRepository.getAllStudentsFromAPI().then((value) {
      final newState = value.fold((faliure) {
        return state.copyWith(isLoading: false);
      }, (allStudentModel) {
        return state.copyWith(
            isLoading: false, allStudentsModel: allStudentModel);
      });
      emit(newState);
    });
  }
}
