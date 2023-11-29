import 'package:flutter/material.dart';
import 'package:saan_to_tomas_app/database/places_db_v2.dart';
import 'package:saan_to_tomas_app/model/places.dart';

class DescriptionCard extends StatefulWidget {
  DescriptionCard({super.key, required this.place});
  Places place;

  @override
  State<DescriptionCard> createState() => _DescriptionCardState(place);
}

//TODO: Update the UI of the initial description button before dragging or clicking
//TODO: Update the border radius of the active description widget and add the icon of rounded rectangle at top
class _DescriptionCardState extends State<DescriptionCard> {
  _DescriptionCardState(this.place);
  Places place;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 30,
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //TODO: Update this so it gets the name of a specific place
                        children: [
                          Text(
                            // TODO: Ayusin texts sa name kasi nagooverflow
                            place.name,
                            style: const TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFF00529B),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            //TODO: Update this so it gets the category of a specific place
                            child: Text(
                              place.category,
                              style: const TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //TODO: Update this so it gets the address of a specific place
                          const Icon(Icons.location_pin, color: Colors.blue),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              place.address,
                              style: const TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.notes_outlined, color: Colors.blue),
                          const SizedBox(width: 10),
                          Expanded(
                            //TODO: Update this so it gets the description of a specific place
                            child: Text(
                              place.description,
                              style: const TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.horizontal_rule_rounded,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
