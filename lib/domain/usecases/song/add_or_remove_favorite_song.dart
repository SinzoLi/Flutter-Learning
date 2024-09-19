import 'package:app/core/usecase/usecase.dart';
import 'package:app/domain/repository/song/song.dart';
import 'package:app/service_locator.dart';
import 'package:dartz/dartz.dart';

class AddOrRemoveFavoriteSongUseCase implements UseCase<Either, String> {
  @override
  Future<Either> call({String? params}) async {
    return await sl<SongsRepository>().addOrRemoveFavoriteSong(params!);
  }
}
