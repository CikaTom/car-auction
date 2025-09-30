import 'package:car_auction/pages/auctions/cubit.dart';
import 'package:car_auction/pages/auctions/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuctionsPageBlocSelector<VALUE> extends StatelessWidget {
  const AuctionsPageBlocSelector({
    super.key,
    required this.selector,
    required this.builder,
  });

  // ignore: unsafe_variance chane it
  final BlocWidgetBuilder<VALUE> builder;

  final BlocWidgetSelector<AuctionPageState, VALUE> selector;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AuctionsPageCubit, AuctionPageState, VALUE>(
      builder: builder,
      selector: selector,
    );
  }
}
