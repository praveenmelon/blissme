import 'package:blissme/data/models/all_services.dart';
import 'package:blissme/data/models/carousel.dart';
import 'package:blissme/domain/entities/app_error.dart';
import 'package:blissme/domain/entities/carousel_entity.dart';
import 'package:blissme/domain/entities/no_params.dart';
import 'package:blissme/domain/usecases/get_all_services.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'product_carousel_state.dart';

class ProductCarouselCubit extends Cubit<ProductCarouselState> {
  final GetAllServices getAllServices;

  ProductCarouselCubit({
    required this.getAllServices,
  }) : super(ProductCarouselInitial());

  void loadCarousel({int defaultIndex = 0}) async {
    final productsEither = await getAllServices(NoParams());
    emit(productsEither.fold(
          (l) => ProductCarouselError(l.appErrorType),
          (products) {
        return ProductCarouselLoaded(
          products: products,
          defaultIndex: defaultIndex,
        );
      },
    ));
  }
}
