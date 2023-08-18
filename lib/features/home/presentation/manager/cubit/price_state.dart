part of 'price_cubit.dart';

@immutable
sealed class PriceState {}

final class PriceInitial extends PriceState {}

final class Pricesuccess extends PriceState {}
