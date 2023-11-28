import 'package:flutter/material.dart';

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
                              const Text("Angkong Dimsum"),
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.all(Radius.circular(50))
                                  ),
                                  child: const Text("Restaurant")
                              )
                            ],
                          ),
                        ),
                        const Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.blue,
                              ),
                              Text("1241 Asturias St, Sampaloc, Manila, 1015 Metro Manila")
                            ],
                          ),
                        ),
                        const Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.view_headline,
                                color: Colors.blue,
                              ),
                              Flexible(
                                child: Text("Angkong Dimsum House, located on P. Noval street, sells a variety of different kinds of siomai:"
                                    "it has pork, chicken, quail, and Japanese siomai."
                                    " It also offers different kinds of dumplings, if you’re looking for something a little different.",
                                  softWrap: true,
                                ),
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
