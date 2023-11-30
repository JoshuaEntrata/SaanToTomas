import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: <Widget>[
          Positioned(
            left: 0,
            child: IconButton(
              icon: const Icon(Icons.chevron_left_rounded,
                  size: 32, color: Color(0xFF00529B)),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
          ),
          Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 250),
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Color(0xFF00529B),
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
