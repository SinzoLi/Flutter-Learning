import 'package:app/data/sources/song/song_firebase_service.dart';
import 'package:app/domain/repository/song/song.dart';
import 'package:app/service_locator.dart';
import 'package:dartz/dartz.dart';

class SongRepositoryImpl extends SongsRepository {
  @override
  Future<Either> getNewsSongs() async {
    return await sl<SongFirebaseService>().getNewsSongs();
  }
}
