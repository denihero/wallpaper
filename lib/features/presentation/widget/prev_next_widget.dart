import 'package:flutter/material.dart';

class PrevNextWidget extends StatelessWidget {
  const PrevNextWidget({Key? key, required this.prevButton, required this.nextButton, required this.page}) : super(key: key);

  final Function() prevButton;
  final Function() nextButton;
  final String page;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: prevButton,
            icon: Icon(Icons.arrow_back_ios,color: page == '1' ? Colors.grey:Colors.black,)),
        Text(page),
        IconButton(
            onPressed: nextButton,
            icon: const Icon(Icons.arrow_forward_ios)),
      ],
    );
  }
}
