import 'package:get_it/get_it.dart';
import 'package:todo_app_orm/blocs/bloc/todo_bloc.dart';
import 'package:todo_app_orm/data/local/database.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerFactory(() => TodoBloc());
  locator.registerLazySingleton(() => Database());
}
