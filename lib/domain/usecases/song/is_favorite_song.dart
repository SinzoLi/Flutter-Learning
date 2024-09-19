import 'package:app/core/usecase/usecase.dart';
import 'package:app/domain/repository/song/song.dart';
import 'package:app/service_locator.dart';

class IsFavoriteSongUseCase implements UseCase<bool, String> {
  @override
  Future<bool> call({String? params}) async {
    return await sl<SongsRepository>().isFavoriteSong(params!);
  }
}
