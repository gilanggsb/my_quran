import '../data.dart';
import '../../domain/domain.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeLocalDataSource localDataSource;
  final HomeRemoteDataSource remoteDataSource;
  HomeRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });
}
