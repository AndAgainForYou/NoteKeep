part of 'task_bloc.dart';

abstract class TaskDataEvent {}

class GetTaskDataEvent extends TaskDataEvent {}

class CreateTaskDataEvent extends TaskDataEvent {
  final String taskId;
  final String name;
  final int type;
  final String description;
  final String finishDate;
  final int urgent;

  CreateTaskDataEvent(this.taskId, this.name, this.type, this.description,
      this.finishDate, this.urgent);
}

class EditTaskDataEvent extends TaskDataEvent {
  final String taskId;
  final int statusCode;

  EditTaskDataEvent(this.taskId, this.statusCode);
}

class EditStatusTaskDataEvent extends TaskDataEvent {
  final String taskId;
  final int statusCode;

  EditStatusTaskDataEvent(this.taskId, this.statusCode);
}

class DeleteTaskDataEvent extends TaskDataEvent {
  final String taskId;
  final int statusCode;

  DeleteTaskDataEvent(this.taskId, this.statusCode);
}