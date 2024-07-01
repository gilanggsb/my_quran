import 'data/data.dart';
import 'domain/domain.dart';
import 'presentation/presentation.dart';

export 'data/data.dart';
export 'domain/domain.dart';
export 'mock_data/mock_data.dart';
export 'presentation/presentation.dart';

void mainHome() {
  mainQuranRemoteDataSource();
  mainQuranRepository();
  mainGetSurahUseCase();
  mainSurahCubit();
  mainJuzCubit();
}
