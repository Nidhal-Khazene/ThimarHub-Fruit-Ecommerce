import 'package:ecommerce_app/core/entities/bottom_nav_bar_entity.dart';
import 'package:ecommerce_app/core/widgets/bottom_nav_bar_item.dart';
import 'package:ecommerce_app/core/widgets/bottom_navigation_bar_body.dart';
import 'package:ecommerce_app/features/cart/presentation/manager/cubits/cart_cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  static const routeName = "CustomBottomNavigationBar";

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  final BottomNavBarEntity bottomNavBarEntity = BottomNavBarEntity();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Scaffold(
        body: BottomNavigationBarBody(selectedIndex: selectedIndex),
        bottomNavigationBar: Container(
          width: MediaQuery.sizeOf(context).width,
          height: 70,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 25,
                offset: Offset(0, -2),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Row(
            children: bottomNavBarEntity.getBottomNavBarEntityList
                .asMap()
                .entries
                .map((entry) {
                  var index = entry.key;
                  var e = entry.value;
                  return Expanded(
                    flex: index == selectedIndex ? 3 : 2,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: BottomNavBarItem(
                        bottomNavBarEntity: e,
                        isSelected: selectedIndex == index,
                      ),
                    ),
                  );
                })
                .toList(),
          ),
        ),
      ),
    );
  }
}
