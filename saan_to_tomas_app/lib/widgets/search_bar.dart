import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        border: Border.all(color: Color(0xFF00529B)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Icon(Icons.search, color: Color(0xFF00529B)),
          SizedBox(width: 8),
          Expanded(
            child: TextField(
              style: TextStyle(
                fontFamily: 'Epilogue',
                color: Color(0xFF00529B),
                fontSize: 16.0,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Where do you want to go?',
                hintStyle: TextStyle(
                  fontFamily: 'Epilogue',
                  color: Color(0xFF00529B),
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
