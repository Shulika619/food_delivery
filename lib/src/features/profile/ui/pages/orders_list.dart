import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/core/const.dart';
import 'package:food_delivery/src/core/widgets/loading_widget.dart';
import 'package:food_delivery/src/features/profile/cubit/past_orders_cubit.dart';
import 'package:food_delivery/src/features/profile/ui/pages/order_detail.dart';
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
                data: (orders) => Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: ListView.builder(
                        shrinkWrap: true,
                        reverse: true,
                        itemCount: orders.length,
                        itemBuilder: (context, index) {
                          final order = orders[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        OrderDetailPage(orderItem: order),
                                  ));
                            },
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: ListTile(
                                  leading: Text(
                                    "\$${order.amount}",
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: kMainColor),
                                  ),
                                  title: Text(
                                    DateFormat.yMMMMEEEEd()
                                        .format(order.dateTime!),
                                    style: const TextStyle(
                                        fontFamily: 'Forum',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: kTxtListColor),
                                  ),
                                  trailing: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 35,
                                      )),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              )),
    );
  }
}
