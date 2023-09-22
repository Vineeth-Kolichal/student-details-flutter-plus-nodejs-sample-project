import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_details_app/application/business_logic/cubit/students_cubit.dart';
import 'package:student_details_app/domain/models/all_students_model/student.dart';

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
          if (state.deleteMsg != null) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                '${state.deleteMsg}',
              ),
              backgroundColor: Colors.grey,
            ));
          }
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
                    return ListTileWidget(
                      student: state.allStudentsModel!.students[index],
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

class ListTileWidget extends StatefulWidget {
  const ListTileWidget({
    super.key,
    required this.student,
  });
  final Student student;

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  bool deleteLoading = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${widget.student.name}'),
      subtitle: Text('${widget.student.age}'),
      trailing: IconButton(
              onPressed: () {
                setState(() {
                  deleteLoading = true;
                });
                context.read<StudentsCubit>().deleteStudent(widget.student.id!);
              },
              icon: Icon(Icons.delete)),
    );
  }
}


