import 'package:ecommerce_app/features/checkout/domain/entities/order_entity.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/shipping_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShippingView extends StatefulWidget {
  const ShippingView({super.key});

  @override
  State<ShippingView> createState() => _ShippingViewState();
}

class _ShippingViewState extends State<ShippingView>
    with AutomaticKeepAliveClientMixin {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    var orderEntity = context.read<OrderInputEntity>();
    return Column(
      children: [
        const SizedBox(height: 32),
        ShippingItem(
          onTap: () {
            setState(() {
              selectedIndex = 0;
              orderEntity.payWithCash = true;
            });
          },
          isSelected: selectedIndex == 0,
          title: "الدفع عند الاستلام",
          subtitle: "التسليم من المكان",
          price:
              (context
                          .read<OrderInputEntity>()
                          .cartEntity
                          .calculateTotalPriceItems() +
                      40)
                  .toString(),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 1;
              orderEntity.payWithCash = false;
            });
          },
          child: ShippingItem(
            isSelected: selectedIndex == 1,
            title: "الدفع اونلاين ",
            subtitle: "يرجي تحديد طريقه الدفع",
            price: context
                .read<OrderInputEntity>()
                .cartEntity
                .calculateTotalPriceItems()
                .toString(),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
