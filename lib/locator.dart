import 'package:e_learning_uji/core/repository/products_repository.dart';
import 'package:e_learning_uji/core/viewmodels/products_viewmodel.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => ProductsRepo());
  locator.registerFactory(() => ProductsViewModel());
}
