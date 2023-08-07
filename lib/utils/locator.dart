import 'package:web_landing_page/services/navigation_service.dart';
import 'package:web_landing_page/utils/route/route_generator.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => RouteGenerator());
}
