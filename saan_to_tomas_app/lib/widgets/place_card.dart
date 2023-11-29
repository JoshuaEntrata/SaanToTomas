import 'package:flutter/material.dart';

class PopularPlacesCard extends StatelessWidget {
  const PopularPlacesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          //TODO: Make this dynamic so it routes to specific map
          Navigator.pushReplacementNamed(context, '/map');
        },
        child: Container(
          width: double.infinity,
          height: 93,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(color: const Color(0xFFD3D3D3)),
          ),
          margin: const EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              Container(
                width: 94,
                //TODO: Fix the border radius because it does not reflect in the widget
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  border: Border.all(color: const Color(0xFFD3D3D3)),
                ),
                //TODO: Update this so it gets the image of a specific place
                child: Image.asset(
                  'images/sample.jpg',
                  width: 94,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 220.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //TODO: Update this so it gets the name of a specific place
                          const Expanded(
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
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xFF00529B),
                            ),
                            //TODO: Update this so it gets the category of a specific place
                            child: const Text(
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
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.location_pin,
                              size: 11, color: Color(0xFF00529B)),
                          SizedBox(width: 5),
                          Flexible(
                            //TODO: Update this so it gets the address of a specific place
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
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.notes_outlined,
                              size: 11, color: Color(0xFF00529B)),
                          SizedBox(width: 5),
                          //TODO: Update this so it gets the description of a specific place
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
        ));
  }
}
