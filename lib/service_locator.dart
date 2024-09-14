import 'package:app/data/repository/auth/auth_repository_impl.dart';
import 'package:app/data/repository/song/song_repository_impl.dart';
import 'package:app/data/sources/auth/auth_firebase_service.dart';
import 'package:app/data/sources/song/song_firebase_service.dart';
import 'package:app/domain/repository/auth/auth.dart';
import 'package:app/domain/repository/song/song.dart';
import 'package:app/domain/usecases/auth/signin.dart';
import 'package:app/domain/usecases/auth/signup.dart';
import 'package:app/domain/usecases/song/get_news_songs.dart';
import 'package:app/domain/usecases/song/get_play_list.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependecies() async {
  sl.registerSingleton<AuthFirebaseService>(
      AuthFirebaseServiceImpl() as AuthFirebaseService);

  sl.registerSingleton<SongFirebaseService>(
      SongFirebaseServiceImpl() as SongFirebaseService);

  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  sl.registerSingleton<SongsRepository>(SongRepositoryImpl());

  sl.registerSingleton<SignupUseCase>(SignupUseCase());

  sl.registerSingleton<SigninUseCase>(SigninUseCase());

  sl.registerSingleton<GetNewsSongsUseCase>(GetNewsSongsUseCase());

  sl.registerSingleton<GetPlayListUseCase>(GetPlayListUseCase());
}
