import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final String url;

  const IconContainer({Key? key, required this.url})
      // ignore: unnecessary_null_comparison
      : assert(url != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 220.0,
      width: 200.0,
      child: CircleAvatar(
        radius: 120.0,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage(url),
      ),
    );
  }
}
