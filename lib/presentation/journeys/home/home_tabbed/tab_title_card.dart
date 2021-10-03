import 'package:blissme/presentation/themes/app_color.dart';
import 'package:flutter/material.dart';

class TabTitleCard extends StatelessWidget {
  final String title;
  final Function() onTap;

  const TabTitleCard({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.grey,
              border: Border.all(
                color: AppColor.pink,
                // red as border color
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
