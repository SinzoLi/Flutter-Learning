import 'package:app/core/usecase/usecase.dart';
import 'package:app/data/models/auth/create_user_req.dart';
import 'package:app/domain/repository/auth/auth.dart';
import 'package:app/service_locator.dart';
import 'package:dartz/dartz.dart';

class SignupUseCase implements UseCase<Either, CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq? params}) {
    return sl<AuthRepository>().signup(params!);
  }
}
