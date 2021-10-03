import 'package:blissme/di/get_it.dart';
import 'package:blissme/presentation/blocs/product_carousel_cubit.dart';
import 'package:blissme/presentation/journeys/home/home_carousel/poster_carousel_widget.dart';
import 'package:blissme/presentation/journeys/home/home_tabbed/home_tabbed_widget.dart';
import 'package:blissme/presentation/themes/app_color.dart';
import 'package:blissme/presentation/widget/app_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ProductCarouselCubit productCarouselCubit;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    productCarouselCubit = getItInstance<ProductCarouselCubit>();
    productCarouselCubit.loadCarousel();
  }

  @override
  void dispose() {
    super.dispose();
    productCarouselCubit.close();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => productCarouselCubit,
        ),
      ],
      child: Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          leading: Icon(Icons.menu),
          centerTitle: true,
          title: Text(
            'Top Salon',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        body: BlocBuilder<ProductCarouselCubit, ProductCarouselState>(
            builder: (context, state) {
          if (state is ProductCarouselLoaded) {
            return Stack(
              fit: StackFit.expand,
              children: <Widget>[
                FractionallySizedBox(
                  alignment: Alignment.topCenter,
                  heightFactor: 0.32,
                  child: PosterCarouselWidget(
                    products: state.products.carousel!,
                  ),
                ),
                FractionallySizedBox(
                  alignment: Alignment.bottomCenter,
                  heightFactor: 0.68,
                  child: HomeTabbedWidget(
                    services: state.products.services!,
                  ),
                )
              ],
            );
          } else if (state is ProductCarouselError) {
            return AppErrorWidget(
              onPressed: () => productCarouselCubit.loadCarousel(),
              errorType: state.errorType,
            );
          }
          return const SizedBox.shrink();
        }),
      ),
    );
  }
}
