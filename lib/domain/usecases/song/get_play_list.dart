import 'package:app/core/usecase/usecase.dart';
import 'package:app/data/repository/song/song_repository_impl.dart';
import 'package:app/service_locator.dart';
import 'package:dartz/dartz.dart';

class GetPlayListUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<SongRepositoryImpl>().getPlayList();
  }
}
