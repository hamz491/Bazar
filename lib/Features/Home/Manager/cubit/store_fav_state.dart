part of 'store_fav_cubit.dart';

@immutable
sealed class StoreFavState {}

final class StoreFavInitial extends StoreFavState {}

final class StoreFavSuccess extends StoreFavState {}

final class StoreFavLoading extends StoreFavState {}

final class StoreFavFailure extends StoreFavState {
  final String ErrMessage;

  StoreFavFailure({required this.ErrMessage});
}
