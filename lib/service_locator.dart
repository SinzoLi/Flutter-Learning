import 'package:app/data/repository/auth/auth_repository_impl.dart';
import 'package:app/data/sources/auth/auth_firebase_service.dart';
import 'package:app/domain/repository/auth/auth.dart';
import 'package:app/domain/usecases/auth/signin.dart';
import 'package:app/domain/usecases/auth/signup.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependecies() async {
  sl.registerSingleton<AuthFirebaseService>(
      AuthFirebaseServiceImpl() as AuthFirebaseService);

  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  sl.registerSingleton<SignupUseCase>(SignupUseCase());

  sl.registerSingleton<SigninUseCase>(SigninUseCase());
}
