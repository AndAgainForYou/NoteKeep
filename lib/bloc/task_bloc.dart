import 'package:bloc/bloc.dart';

part 'task_event.dart';
part 'task_state.dart';

class TasksDataBloc extends Bloc<TaskDataEvent, TaskDataState> {
  TasksDataBloc() : super(TaskDataInitial()) {
    on<GetTaskDataEvent>((event, emit) async {
      emit(DataTaskState(state as Map<String, dynamic>));
    });

    on<CreateTaskDataEvent>((event, emit) async {});

    on<EditTaskDataEvent>((event, emit) async {});

    on<DeleteTaskDataEvent>((event, emit) async {});

    on<EditStatusTaskDataEvent>((event, emit) async {});
  }
}
