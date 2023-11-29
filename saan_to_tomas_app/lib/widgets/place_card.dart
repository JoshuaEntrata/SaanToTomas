import 'package:flutter/material.dart';
import 'package:saan_to_tomas_app/model/places.dart';
import 'package:saan_to_tomas_app/screens/maps_screen.dart';

class PopularPlacesCard extends StatelessWidget {
  const PopularPlacesCard({super.key, required this.place});

  final Places place;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          //TODO: Make this dynamic so it routes to specific map
          // Navigator.pushReplacementNamed(context, '/map');
          // Navigator.of(context).pushReplacementNamed('/map', arguments: {
          //   'place': place,
          // });
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MapPage(
              place: place,
            ),
          ));
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
                    SizedBox(
                      width: 220.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //TODO: Update this so it gets the name of a specific place
                          Expanded(
                            child: Text(
                              place.name,
                              style: const TextStyle(
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
                            child: Text(
                              place.category,
                              style: const TextStyle(
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
                    SizedBox(
                      width: 200,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.location_pin,
                              size: 11, color: Color(0xFF00529B)),
                          const SizedBox(width: 5),
                          Flexible(
                            //TODO: Update this so it gets the address of a specific place
                            child: Text(
                              place.address,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
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
                    SizedBox(
                      width: 200,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.notes_outlined,
                              size: 11, color: Color(0xFF00529B)),
                          const SizedBox(width: 5),
                          //TODO: Update this so it gets the description of a specific place
                          Flexible(
                            child: Text(
                              place.description,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
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
