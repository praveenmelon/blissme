import 'package:blissme/domain/entities/app_error.dart';
import 'package:blissme/presentation/widget/button.dart';
import 'package:flutter/material.dart';

import 'package:blissme/common/constants/size_constants.dart';
import 'package:blissme/domain/entities/app_error.dart';
import 'package:blissme/common/extensions/size_extensions.dart';


class AppErrorWidget extends StatelessWidget {
  final AppErrorType errorType;
  final Function() onPressed;

  const AppErrorWidget({
    Key? key,
    required this.errorType,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>  Padding(
    padding: EdgeInsets.symmetric(horizontal: Sizes.dimen_18.w),
    //1
    child: Column(
      //6

      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //2
        Text(
          errorType == AppErrorType.api
              ? 'Something Went Wrong'
              : 'Check Network',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        //3
        ButtonBar(
          children: [
            //4
            Button(
              onPressed: onPressed,
              text: 'Retry',
              color: Colors.deepOrangeAccent,
            ),
            //5
            Button(
              onPressed: () {

              },
              color: Colors.deepOrangeAccent,
              text: 'Feedback',
            ),
          ],
        ),
      ],
    ),
  );
}
