import 'package:app/core/usecase/usecase.dart';
import 'package:app/domain/repository/auth/auth.dart';
import 'package:app/service_locator.dart';
import 'package:dartz/dartz.dart';

class GetUserUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<AuthRepository>().getUser();
  }
}
