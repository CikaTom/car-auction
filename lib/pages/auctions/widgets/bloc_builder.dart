import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit.dart';
import '../state.dart';

class AuctionPageBlocBuilder extends StatelessWidget {
  const AuctionPageBlocBuilder({
    super.key,
    required this.builder,
  });

  final BlocWidgetBuilder<AuctionPageState> builder;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuctionsPageCubit, AuctionPageState>(
      builder: builder,
    );
  }
}
