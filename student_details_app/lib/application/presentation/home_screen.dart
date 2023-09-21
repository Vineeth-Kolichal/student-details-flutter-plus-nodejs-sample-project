import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_details_app/application/business_logic/cubit/students_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<StudentsCubit>().getAllStudent();
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Students'),
      ),
      body: BlocConsumer<StudentsCubit, StudentsState>(
        listener: (context, state) {
          if (state.allStudentsModel != null &&
              state.allStudentsModel?.status == 500) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                '${state.allStudentsModel?.message}',
              ),
              backgroundColor: Colors.red,
            ));
          }
        },
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (!state.isLoading && state.allStudentsModel == null) {
            return const Center(
              child: Text("Something error"),
            );
          } else {
            if (state.allStudentsModel!.students.isEmpty) {
              return const Center(
                child: Text('No students found'),
              );
            } else {
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<StudentsCubit>().getAllStudent();
                },
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                          '${state.allStudentsModel!.students[index].name}'),
                      subtitle: Text(
                          '${state.allStudentsModel!.students[index].age}'),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: state.allStudentsModel!.students.length,
                ),
              );
            }
          }
        },
      ),
    );
  }
}
