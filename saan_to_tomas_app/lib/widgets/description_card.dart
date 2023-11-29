import 'package:flutter/material.dart';
import 'package:saan_to_tomas_app/database/places_db_v2.dart';
import 'package:saan_to_tomas_app/model/places.dart';

final PlacesDB placesDB = PlacesDB();
final Places places = placesDB.getPlace();

class DescriptionCard extends StatefulWidget {
  const DescriptionCard({super.key});

  @override
  State<DescriptionCard> createState() => _DescriptionCardState();
}

class _DescriptionCardState extends State<DescriptionCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.white
                        ),
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                    ),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.horizontal_rule_rounded,
                          color: Colors.blue,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(places.name),
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.all(Radius.circular(50))
                                  ),
                                  child: Text(places.category)
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: Colors.blue,
                              ),
                              Flexible(
                                  child: Text(places.address, softWrap: true,)
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Icon(
                                Icons.view_headline,
                                color: Colors.blue,
                              ),
                              Flexible(
                                child: Text(places.description, softWrap: true,),
                              ),
                            ],
                          ),
                        ),

                      ],
                    )
                );
              }
          );
        },
        child: Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.black
                ),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
            ),
            child: const Center(child: Icon(
              Icons.horizontal_rule_rounded,
              color: Colors.blue,
            )),
          ),
        ),
      ),
    );
  }
}
