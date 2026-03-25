import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/auth/domain/entities/user_entity.dart';
import 'package:ecommerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());
  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword({
    required String emailAddress,
    required String password,
    required String name,
    required bool isAdmin,
  }) async {
    emit(SignUpLoading());
    var result = await authRepo.createUserWithEmailAndPassword(
      emailAddress,
      password,
      name,
      isAdmin,
    );
    result.fold(
      (failure) {
        emit(SignUpFailure(message: failure.message));
      },
      (userEntity) {
        emit(SignUpSuccess(userEntity: userEntity));
      },
    );
  }
}
