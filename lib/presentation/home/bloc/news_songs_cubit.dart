import 'package:app/domain/usecases/song/get_news_songs.dart';
import 'package:app/presentation/home/bloc/news_songs_state.dart';
import 'package:app/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsSongsCubit extends Cubit<NewsSongsState> {
  NewsSongsCubit() : super(NewsSongsLoading());

  Future<void> getNewsSongs() async {
    var returnedSongs = await sl<GetNewsSongsUseCase>().call();

    returnedSongs.fold((l) {
      emit(NewsSongsLoadFailure());
    }, (data) {
      emit(NewsSongsLoaded(songs: data));
    });
  }
}
