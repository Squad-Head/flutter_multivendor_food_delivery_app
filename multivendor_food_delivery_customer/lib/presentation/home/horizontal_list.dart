import 'package:flutter/material.dart';

class Horizontal extends StatelessWidget {
  Horizontal({
    Key? key,
    required this.resturantName,
    required this.resturantImages,
  }) : super(key: key);

  final List resturantName;
  final List resturantImages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        // physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: resturantName.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: const BoxDecoration(
                // color: Color.fromARGB(255, 243, 240, 240),
                ),
            height: 200,
            width: 180,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.network(
                          resturantImages[index],
                          height: 200,
                          width: 180,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 15,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(16)),
                          // color: Colors.redAccent,
                          height: 20,
                          width: 70,
                          child: const Center(
                            child: Text(
                              "HOTDEALS",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                resturantName[index],
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text(
                                    "30 Min ! 1 Serving",
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.favorite_outline,
                                    color: Colors.white,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
