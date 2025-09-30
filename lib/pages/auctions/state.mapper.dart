// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'state.dart';

class AuctionPageStateMapper extends ClassMapperBase<AuctionPageState> {
  AuctionPageStateMapper._();

  static AuctionPageStateMapper? _instance;
  static AuctionPageStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuctionPageStateMapper._());
      AuctionsPageAuctionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AuctionPageState';

  static bool _$isLoading(AuctionPageState v) => v.isLoading;
  static const Field<AuctionPageState, bool> _f$isLoading = Field(
    'isLoading',
    _$isLoading,
  );
  static String _$selectedTab(AuctionPageState v) => v.selectedTab;
  static const Field<AuctionPageState, String> _f$selectedTab = Field(
    'selectedTab',
    _$selectedTab,
  );
  static List<AuctionsPageAuction> _$auctions(AuctionPageState v) => v.auctions;
  static const Field<AuctionPageState, List<AuctionsPageAuction>> _f$auctions =
      Field('auctions', _$auctions);

  @override
  final MappableFields<AuctionPageState> fields = const {
    #isLoading: _f$isLoading,
    #selectedTab: _f$selectedTab,
    #auctions: _f$auctions,
  };

  static AuctionPageState _instantiate(DecodingData data) {
    return AuctionPageState(
      isLoading: data.dec(_f$isLoading),
      selectedTab: data.dec(_f$selectedTab),
      auctions: data.dec(_f$auctions),
    );
  }

  @override
  final Function instantiate = _instantiate;
}

mixin AuctionPageStateMappable {
  AuctionPageStateCopyWith<AuctionPageState, AuctionPageState, AuctionPageState>
  get copyWith =>
      _AuctionPageStateCopyWithImpl<AuctionPageState, AuctionPageState>(
        this as AuctionPageState,
        $identity,
        $identity,
      );
  @override
  bool operator ==(Object other) {
    return AuctionPageStateMapper.ensureInitialized().equalsValue(
      this as AuctionPageState,
      other,
    );
  }

  @override
  int get hashCode {
    return AuctionPageStateMapper.ensureInitialized().hashValue(
      this as AuctionPageState,
    );
  }
}

extension AuctionPageStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuctionPageState, $Out> {
  AuctionPageStateCopyWith<$R, AuctionPageState, $Out>
  get $asAuctionPageState =>
      $base.as((v, t, t2) => _AuctionPageStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AuctionPageStateCopyWith<$R, $In extends AuctionPageState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    AuctionsPageAuction,
    AuctionsPageAuctionCopyWith<$R, AuctionsPageAuction, AuctionsPageAuction>
  >
  get auctions;
  $R call({
    bool? isLoading,
    String? selectedTab,
    List<AuctionsPageAuction>? auctions,
  });
  AuctionPageStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _AuctionPageStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuctionPageState, $Out>
    implements AuctionPageStateCopyWith<$R, AuctionPageState, $Out> {
  _AuctionPageStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuctionPageState> $mapper =
      AuctionPageStateMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    AuctionsPageAuction,
    AuctionsPageAuctionCopyWith<$R, AuctionsPageAuction, AuctionsPageAuction>
  >
  get auctions => ListCopyWith(
    $value.auctions,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(auctions: v),
  );
  @override
  $R call({
    bool? isLoading,
    String? selectedTab,
    List<AuctionsPageAuction>? auctions,
  }) => $apply(
    FieldCopyWithData({
      if (isLoading != null) #isLoading: isLoading,
      if (selectedTab != null) #selectedTab: selectedTab,
      if (auctions != null) #auctions: auctions,
    }),
  );
  @override
  AuctionPageState $make(CopyWithData data) => AuctionPageState(
    isLoading: data.get(#isLoading, or: $value.isLoading),
    selectedTab: data.get(#selectedTab, or: $value.selectedTab),
    auctions: data.get(#auctions, or: $value.auctions),
  );

  @override
  AuctionPageStateCopyWith<$R2, AuctionPageState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AuctionPageStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class AuctionsPageAuctionMapper extends ClassMapperBase<AuctionsPageAuction> {
  AuctionsPageAuctionMapper._();

  static AuctionsPageAuctionMapper? _instance;
  static AuctionsPageAuctionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuctionsPageAuctionMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AuctionsPageAuction';

  static String _$imageUrl(AuctionsPageAuction v) => v.imageUrl;
  static const Field<AuctionsPageAuction, String> _f$imageUrl = Field(
    'imageUrl',
    _$imageUrl,
  );
  static int _$remainingTime(AuctionsPageAuction v) => v.remainingTime;
  static const Field<AuctionsPageAuction, int> _f$remainingTime = Field(
    'remainingTime',
    _$remainingTime,
  );
  static String _$remainingTimeText(AuctionsPageAuction v) =>
      v.remainingTimeText;
  static const Field<AuctionsPageAuction, String> _f$remainingTimeText = Field(
    'remainingTimeText',
    _$remainingTimeText,
  );
  static String _$bidAmount(AuctionsPageAuction v) => v.bidAmount;
  static const Field<AuctionsPageAuction, String> _f$bidAmount = Field(
    'bidAmount',
    _$bidAmount,
  );
  static String _$title(AuctionsPageAuction v) => v.title;
  static const Field<AuctionsPageAuction, String> _f$title = Field(
    'title',
    _$title,
  );
  static String _$subtitle(AuctionsPageAuction v) => v.subtitle;
  static const Field<AuctionsPageAuction, String> _f$subtitle = Field(
    'subtitle',
    _$subtitle,
  );
  static String _$location(AuctionsPageAuction v) => v.location;
  static const Field<AuctionsPageAuction, String> _f$location = Field(
    'location',
    _$location,
  );
  static bool _$favored(AuctionsPageAuction v) => v.favored;
  static const Field<AuctionsPageAuction, bool> _f$favored = Field(
    'favored',
    _$favored,
  );
  static bool _$reserved(AuctionsPageAuction v) => v.reserved;
  static const Field<AuctionsPageAuction, bool> _f$reserved = Field(
    'reserved',
    _$reserved,
  );
  static bool _$inspected(AuctionsPageAuction v) => v.inspected;
  static const Field<AuctionsPageAuction, bool> _f$inspected = Field(
    'inspected',
    _$inspected,
  );

  @override
  final MappableFields<AuctionsPageAuction> fields = const {
    #imageUrl: _f$imageUrl,
    #remainingTime: _f$remainingTime,
    #remainingTimeText: _f$remainingTimeText,
    #bidAmount: _f$bidAmount,
    #title: _f$title,
    #subtitle: _f$subtitle,
    #location: _f$location,
    #favored: _f$favored,
    #reserved: _f$reserved,
    #inspected: _f$inspected,
  };

  static AuctionsPageAuction _instantiate(DecodingData data) {
    return AuctionsPageAuction(
      imageUrl: data.dec(_f$imageUrl),
      remainingTime: data.dec(_f$remainingTime),
      remainingTimeText: data.dec(_f$remainingTimeText),
      bidAmount: data.dec(_f$bidAmount),
      title: data.dec(_f$title),
      subtitle: data.dec(_f$subtitle),
      location: data.dec(_f$location),
      favored: data.dec(_f$favored),
      reserved: data.dec(_f$reserved),
      inspected: data.dec(_f$inspected),
    );
  }

  @override
  final Function instantiate = _instantiate;
}

mixin AuctionsPageAuctionMappable {
  AuctionsPageAuctionCopyWith<
    AuctionsPageAuction,
    AuctionsPageAuction,
    AuctionsPageAuction
  >
  get copyWith =>
      _AuctionsPageAuctionCopyWithImpl<
        AuctionsPageAuction,
        AuctionsPageAuction
      >(this as AuctionsPageAuction, $identity, $identity);
  @override
  bool operator ==(Object other) {
    return AuctionsPageAuctionMapper.ensureInitialized().equalsValue(
      this as AuctionsPageAuction,
      other,
    );
  }

  @override
  int get hashCode {
    return AuctionsPageAuctionMapper.ensureInitialized().hashValue(
      this as AuctionsPageAuction,
    );
  }
}

extension AuctionsPageAuctionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuctionsPageAuction, $Out> {
  AuctionsPageAuctionCopyWith<$R, AuctionsPageAuction, $Out>
  get $asAuctionsPageAuction => $base.as(
    (v, t, t2) => _AuctionsPageAuctionCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class AuctionsPageAuctionCopyWith<
  $R,
  $In extends AuctionsPageAuction,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? imageUrl,
    int? remainingTime,
    String? remainingTimeText,
    String? bidAmount,
    String? title,
    String? subtitle,
    String? location,
    bool? favored,
    bool? reserved,
    bool? inspected,
  });
  AuctionsPageAuctionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _AuctionsPageAuctionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuctionsPageAuction, $Out>
    implements AuctionsPageAuctionCopyWith<$R, AuctionsPageAuction, $Out> {
  _AuctionsPageAuctionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuctionsPageAuction> $mapper =
      AuctionsPageAuctionMapper.ensureInitialized();
  @override
  $R call({
    String? imageUrl,
    int? remainingTime,
    String? remainingTimeText,
    String? bidAmount,
    String? title,
    String? subtitle,
    String? location,
    bool? favored,
    bool? reserved,
    bool? inspected,
  }) => $apply(
    FieldCopyWithData({
      if (imageUrl != null) #imageUrl: imageUrl,
      if (remainingTime != null) #remainingTime: remainingTime,
      if (remainingTimeText != null) #remainingTimeText: remainingTimeText,
      if (bidAmount != null) #bidAmount: bidAmount,
      if (title != null) #title: title,
      if (subtitle != null) #subtitle: subtitle,
      if (location != null) #location: location,
      if (favored != null) #favored: favored,
      if (reserved != null) #reserved: reserved,
      if (inspected != null) #inspected: inspected,
    }),
  );
  @override
  AuctionsPageAuction $make(CopyWithData data) => AuctionsPageAuction(
    imageUrl: data.get(#imageUrl, or: $value.imageUrl),
    remainingTime: data.get(#remainingTime, or: $value.remainingTime),
    remainingTimeText: data.get(
      #remainingTimeText,
      or: $value.remainingTimeText,
    ),
    bidAmount: data.get(#bidAmount, or: $value.bidAmount),
    title: data.get(#title, or: $value.title),
    subtitle: data.get(#subtitle, or: $value.subtitle),
    location: data.get(#location, or: $value.location),
    favored: data.get(#favored, or: $value.favored),
    reserved: data.get(#reserved, or: $value.reserved),
    inspected: data.get(#inspected, or: $value.inspected),
  );

  @override
  AuctionsPageAuctionCopyWith<$R2, AuctionsPageAuction, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _AuctionsPageAuctionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

