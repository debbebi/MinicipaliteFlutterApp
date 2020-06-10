import 'package:get_it/get_it.dart';
import 'package:minicipalite_app/repositories/post_repository.dart';
import 'package:minicipalite_app/services/api.dart';

GetIt locator = GetIt();
void setupLocator() {
  locator.registerLazySingleton(() => Api('posts'));
  locator.registerLazySingleton(() => PostRepository());
}
