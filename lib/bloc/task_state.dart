part of 'task_bloc.dart';

abstract class TaskDataState {
  const TaskDataState();

  @override
  List<Object> get props => [];
}

class TaskDataInitial extends TaskDataState {}

class DataTaskState extends TaskDataState {
  final Map<String, dynamic> taskData;

  const DataTaskState(this.taskData);

  @override
  List<Object> get props => [taskData];
}

class CreateTaskDataState extends TaskDataState {}