import 'package:flutter/material.dart';

class PopularPlacesCard extends StatelessWidget {
  const PopularPlacesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 93,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Color(0xFFD3D3D3)),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          // Left part with image and stroke
          Container(
            width: 94,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              border: Border.all(color: Color(0xFFD3D3D3)),
            ),
            child: Image.asset(
              'images/sample.jpg',
              width: 94,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // Right part with padding and column layout
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 1st row
                Container(
                  width: 220.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Place Name',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color(0xFF2A2A2A),
                          ),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xFF00529B),
                        ),
                        child: Text(
                          'Category',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 8,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // 2nd row
                Container(
                  width: 200,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.location_pin,
                          size: 11, color: Color(0xFF00529B)),
                      SizedBox(width: 5),
                      Flexible(
                        child: Text(
                          '1241 Asturias St, Sampaloc, Manila, 1015 Metro Manila · 0.85 km · 4 min',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Color(0xFF00529B),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // 3rd row
                Container(
                  width: 200,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.notes_outlined,
                          size: 11, color: Color(0xFF00529B)),
                      SizedBox(width: 5),
                      Flexible(
                        child: Text(
                          'Angkong Dimsum is famous in Manila. It is a dimsum place near UST.',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Color(0xFF00529B),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
