import 'package:blissme/common/constants/size_constants.dart';
import 'package:blissme/data/models/carousel.dart';
import 'package:blissme/domain/entities/carousel_entity.dart';
import 'package:blissme/presentation/themes/app_color.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:blissme/common/extensions/size_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PosterCarouselWidget extends StatefulWidget {
  final List<Carousel> products;

  const PosterCarouselWidget({Key? key, required this.products})
      : super(key: key);

  @override
  _PosterCarouselWidgetState createState() => _PosterCarouselWidgetState();
}

class _PosterCarouselWidgetState extends State<PosterCarouselWidget> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              setState(
                () {
                  _currentIndex = index;
                },
              );
            },
          ),
          items: widget.products
              .map(
                (item) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: item.image!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.products.map((urlOfItem) {
            int index = widget.products.indexOf(urlOfItem);
            return Container(
              width: 10.0,
              height: 7.0,
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? AppColor.pink
                    : Color.fromRGBO(0, 0, 0, 0.3),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
