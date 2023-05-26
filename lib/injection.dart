import 'package:ecommerce/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;
@injectableInit
void configInjection() {
  getIt.init(environment: Environment.prod);
}
