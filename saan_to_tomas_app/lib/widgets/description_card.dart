import 'package:flutter/material.dart';

class DescriptionCard extends StatefulWidget {
  const DescriptionCard({Key? key});

  @override
  State<DescriptionCard> createState() => _DescriptionCardState();
}

//TODO: Update the UI of the initial description button before dragging or clicking
//TODO: Update the border radius of the active description widget and add the icon of rounded rectangle at top
class _DescriptionCardState extends State<DescriptionCard> {
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
                          const Text(
                            "Angkong Dimsum",
                            style: TextStyle(
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
                            child: const Text(
                              "Restaurant",
                              style: TextStyle(
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
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //TODO: Update this so it gets the address of a specific place
                          Icon(Icons.location_pin, color: Colors.blue),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "1241 Asturias St, Sampaloc, Manila, 1015 Metro Manila · 0.85 km · 4 min",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.notes_outlined, color: Colors.blue),
                          SizedBox(width: 10),
                          Expanded(
                            //TODO: Update this so it gets the description of a specific place
                            child: Text(
                              "Angkong Dimsum House, located on P. Noval street, sells a variety of different kinds of siomai: it has pork, chicken, quail, and Japanese siomai. It also offers different kinds of dumplings, if you’re looking for something a little different.",
                              style: TextStyle(
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
