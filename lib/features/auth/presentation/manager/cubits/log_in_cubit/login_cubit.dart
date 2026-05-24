import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/auth/domain/entities/user_entity.dart';
import 'package:ecommerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());
  final AuthRepo authRepo;

  Future<void> loginWithEmailAndPassword(
    String emailAddress,
    String password,
  ) async {
    emit(LoginLoading());
    var result = await authRepo.signInWithEmailAndPassword(
      emailAddress,
      password,
    );
    result.fold(
      (failure) => emit(LoginFailure(errorMessage: failure.message)),
      (userEntity) => emit(LoginSuccess(userEntity: userEntity)),
    );
  }

  Future<void> loginWithGoogle() async {
    emit(LoginLoading());
    var result = await authRepo.signInWithGoogle();
    result.fold(
      (failure) => emit(LoginFailure(errorMessage: failure.message)),
      (userEntity) => emit(LoginSuccess(userEntity: userEntity)),
    );
  }

  Future<void> loginWithFacebook() async {
    emit(LoginLoading());
    var result = await authRepo.signInWithFacebook();
    result.fold(
      (failure) => emit(LoginFailure(errorMessage: failure.message)),
      (userEntity) => emit(LoginSuccess(userEntity: userEntity)),
    );
  }
}
