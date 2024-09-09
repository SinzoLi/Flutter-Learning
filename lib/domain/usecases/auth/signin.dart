import 'package:app/core/usecase/usecase.dart';
import 'package:app/data/models/auth/signin_user_req.dart';
import 'package:app/domain/repository/auth/auth.dart';
import 'package:app/service_locator.dart';
import 'package:dartz/dartz.dart';

class SigninUseCase implements UseCase<Either, SigninUserReq> {
  @override
  Future<Either> call({SigninUserReq? params}) {
    return sl<AuthRepository>().signin(params!);
  }
}
