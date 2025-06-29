import 'package:mockito/annotations.dart';
import 'package:my_quran/common/common.dart';

import 'alquran/home.dart';

@GenerateNiceMocks([MockSpec<InjectorService>(onMissingStub: OnMissingStub.returnDefault)])
void main() async {
  await init();
  mainHome();
}

Future<void> init() async {}
