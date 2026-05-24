import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/repos/orders_repo/order_repo.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/order_entity.dart';
import 'package:meta/meta.dart';

part 'add_order_state.dart';

class AddOrderCubit extends Cubit<AddOrderState> {
  AddOrderCubit({required OrderRepo orderRepo})
    : _orderRepo = orderRepo,
      super(AddOrderInitial());
  final OrderRepo _orderRepo;

  Future<void> addOrder(OrderInputEntity orderEntity) async {
    emit(AddOrderLoading());
    var result = await _orderRepo.addOrder(orderEntity);
    result.fold(
      (failure) => emit(AddOrderFailure(errorMessage: failure.message)),
      (right) => emit(AddOrderSuccess()),
    );
  }
}
