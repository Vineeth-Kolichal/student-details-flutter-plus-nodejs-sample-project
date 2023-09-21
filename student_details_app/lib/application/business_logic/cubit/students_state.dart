part of 'students_cubit.dart';

@freezed
class StudentsState with _$StudentsState {
  const factory StudentsState({required AllStudentsModel? allStudentsModel,required bool isLoading}) = _Initial;
  factory StudentsState.initial() =>const  StudentsState(allStudentsModel: null,isLoading: true);
}
