import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  //TODO: If possible, center the text
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_back, color: Color(0xFF00529B)),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF00529B),
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
