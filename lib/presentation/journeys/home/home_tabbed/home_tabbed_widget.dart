import 'package:blissme/data/models/services.dart';
import 'package:blissme/presentation/widget/button.dart';
import 'package:flutter/material.dart';

class HomeTabbedWidget extends StatefulWidget {
  final List<Services> services;

  const HomeTabbedWidget({Key? key, required this.services}) : super(key: key);

  @override
  _HomeTabbedWidgetState createState() => _HomeTabbedWidgetState();
}

class _HomeTabbedWidgetState extends State<HomeTabbedWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50,
          margin: EdgeInsets.only(left: 8),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: widget.services.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final Services product = widget.services[index];
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Button(
                    onPressed: () => _onTabTapped(index),
                    text: product.serviceName!,
                    color: _selectedIndex == index ? Colors.red : Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  )
                ],
              );
            },
          ),
        ),
        Expanded(child: Container())
      ],
    );
  }

  _onTabTapped(int index) {
    setState(() => _selectedIndex = index);
  }
}
