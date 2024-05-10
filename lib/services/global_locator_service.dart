import 'package:get_it/get_it.dart';
import 'package:movies_flutter/modules/home/home_locator_service.dart';
import 'package:movies_flutter/services/custom_http_service.dart';

final globalLocator = GetIt.I;

void globalSetupLocator() {
  homeSetupLocator();
  globalLocator.registerSingleton(CustomHttpService());
}
