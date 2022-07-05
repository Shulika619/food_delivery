import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/core/const.dart';
import 'package:food_delivery/src/core/widgets/loading_widget.dart';
import 'package:food_delivery/src/features/profile/cubit/past_orders_cubit.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/size_config.dart';

class OrdersListPage extends StatefulWidget {
  const OrdersListPage({Key? key}) : super(key: key);

  @override
  State<OrdersListPage> createState() => _OrdersListPageState();
}

class _OrdersListPageState extends State<OrdersListPage> {
  @override
  void initState() {
    super.initState();
    context.read<PastOrdersCubit>().fetchOrders();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Past Orders'),
        centerTitle: true,
      ),
      backgroundColor: kMainBgColor,
      body: BlocBuilder<PastOrdersCubit, PastOrdersState>(
          builder: (context, state) => state.when(
                initial: () => SizedBox(
                    child: Center(
                  child: Lottie.network(
                      "https://assets10.lottiefiles.com/packages/lf20_peztuj79.json",
                      height: SizeConfig.screenHeight! / 6.83,
                      width: SizeConfig.screenWidth! / 4.11,
                      repeat: false),
                )),
                loading: () => const LoadingIndicatorWidget(),
                data: (orders) => Padding(
                  padding: const EdgeInsets.all(20),
                  child: ListView.builder(
                      itemCount: orders.length,
                      itemBuilder: (context, index) {
                        final order = orders[index];
                        return ListTile(
                          leading:
                              CircleAvatar(child: Text("\$${order.amount}")),
                          title: Text(
                            DateFormat.yMMMMEEEEd().format(order.dateTime!),
                            style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                color: kTxtMainColor),
                          ),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.keyboard_arrow_right_outlined,
                                size: 35,
                              )),
                        );
                      }),
                ),
              )),
    );
  }
}
