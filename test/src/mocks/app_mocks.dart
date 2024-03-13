import 'package:apod/src/app/configurators/stark_configurator.dart';
import 'package:apod/src/app/environment.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([
  MockSpec<Environment>(),
  MockSpec<StarkConfigurator>(),
])
void main() {}
