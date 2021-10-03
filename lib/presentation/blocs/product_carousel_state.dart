part of 'product_carousel_cubit.dart';

abstract class ProductCarouselState extends Equatable {
  const ProductCarouselState();
  @override
  List<Object> get props => [];
}

class ProductCarouselInitial extends ProductCarouselState {}

class ProductCarouselError extends ProductCarouselState {
  final AppErrorType errorType;

  const ProductCarouselError(this.errorType);
}

class ProductCarouselLoaded extends ProductCarouselState {
  final AllServices products;
  final int defaultIndex;

  const ProductCarouselLoaded({
    required this.products,
    this.defaultIndex = 0,
  }) : assert(defaultIndex >= 0, 'defaultIndex cannot be less than 0');

  @override
  List<Object> get props => [products, defaultIndex];
}