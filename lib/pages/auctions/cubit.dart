import 'dart:async';

import 'package:car_auction/services/formatting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';

class AuctionsPageCubit extends Cubit<AuctionPageState> {
  AuctionsPageCubit()
    : super(
        AuctionPageState(
          isLoading: true,
          selectedTab: 'Ending soon',
          auctions: [],
        ),
      ) {
    Future.microtask(_loadData);
  }

  Timer? _countdownTimer;

  final _formattingService = FormattingService();

  @override
  Future<void> close() {
    _countdownTimer?.cancel();
    return super.close();
  }

  void onTabSelected(String tab) {
    emit(state.copyWith(selectedTab: tab));
  }

  void toggleFavorite(int index) {
    emit(state.copyWith.auctions.at(index).$update((a) => a.copyWith(favored: !a.favored)));
  }

  void _startCountdowns() {
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      emit(
        state.copyWith(
          auctions: state.auctions.map((a) {
            final remainingTime = a.remainingTime - 1;
            final remainingTimeText = _formattingService.formatRemainingTimeInSeconds(remainingTime);

            return a.copyWith(
              remainingTime: remainingTime,
              remainingTimeText: remainingTimeText,
            );
          }).toList(),
        ),
      );
    });
  }

  Future<void> _loadData() async {
    emit(
      state.copyWith(
        isLoading: false,
        auctions: [
          AuctionsPageAuction(
            title: '2019 Honda Civic',
            imageUrl:
                'https://www.topgear.com/sites/default/files/news-listicle/image/2021/12/18.%20Koenigsegg%20Jesko.jpg?w=827&h=465',
            remainingTime: 60 * 60 * 24,
            remainingTimeText: '1day',
            bidAmount: '150',
            subtitle: 'PDK Transmission, Full service',
            location: 'Austin, TX 78081',
            favored: false,
            reserved: true,
            inspected: false,
          ),
          AuctionsPageAuction(
            title: '2022 Tesla Model S',
            imageUrl: 'https://cdn.dealeraccelerate.com/pinnacle/1/358/21355/1920x1440/2022-tesla-model-s-plaid',
            remainingTime: 60 * 60 * 24 * 2,
            remainingTimeText: '2days',
            bidAmount: '200',
            subtitle: 'Track package, Performance Modification',
            location: 'Seattle, WA 98104',
            favored: true,
            reserved: true,
            inspected: true,
          ),
          AuctionsPageAuction(
            title: '2021 Ford Mustang',
            imageUrl: 'https://di-sitebuilder-assets.dealerinspire.com/Ford/MLP/Mustang/2021/oxford-white.jpg',
            remainingTime: 60 * 60 * 24 * 3,
            remainingTimeText: '3days',
            bidAmount: '250',
            subtitle: 'PDK Transmission, Full service',
            location: 'Brookline, MA 02215',
            favored: true,
            reserved: false,
            inspected: false,
          ),
          AuctionsPageAuction(
            title: '2023 Lamborghini Huracán',
            imageUrl:
                'https://images.dealer.com/ddc/vehicles/2023/Lamborghini/Huracan%20EVO/Coupe/color/Arancio%20Dac%20Matte-ADAC-240,84,35-640-en_US.jpg',
            remainingTime: 60 * 60 * 1 + 60 * 30 + 55,
            remainingTimeText: '1:30:55',
            bidAmount: '300',
            subtitle: 'Track package, Performance Modification',
            location: 'Boston, MA 02215',
            favored: false,
            reserved: false,
            inspected: true,
          ),
          AuctionsPageAuction(
            title: '2022 Bugatti Chiron',
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ9MuxcTW1GWZcJuXf95bi6Zfa1et9ALypTg&s',
            remainingTime: 30 * 60,
            remainingTimeText: '0:30:00',
            bidAmount: '350',
            subtitle: 'PDK Transmission, Full service',
            location: 'Los Angeles, CA 90001',
            favored: false,
            reserved: true,
            inspected: false,
          ),
        ],
      ),
    );

    _startCountdowns();
  }
}
