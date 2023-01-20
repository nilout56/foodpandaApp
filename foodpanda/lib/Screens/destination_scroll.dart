import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodpanda/Models/destinations.dart';

class DestinationScreen extends StatefulWidget {
  const DestinationScreen({super.key});

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "ປະເພດອາຫານ",
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0),
              ),
            ],
          ),
        ),
              SizedBox(height: 10,),
        Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: destinations.length,
              itemBuilder: (BuildContext context, int index) {
                Destination destination = destinations[index];
                return  Container(
                    margin: EdgeInsets.all(4.0),
                    width: 100.0,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        
                        Container(
                          height: 120,
                          width: 200.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${destinations.length}',
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                        
                                ]
                                ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                        
                            Hero(
                              tag: destination.imageUrl,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                  height: 180.0,
                                  width: 180.0,
                                  image: AssetImage(destination.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                        
                          ]),
                        ),           
                      //     Padding(
                      //    padding: const EdgeInsets.all(8.0),
                      //    child: Row(
                      //     children: [
                      //                 Padding(
                      //            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0),
                      //            child: Text(
                      //                     '${destination.type}',
                      //                     style: TextStyle(
                      //                       color: Color(0xffD70F64),
                      //                       fontWeight: FontWeight.bold,
                      //                     ),
                      //                   ),
                      //          ),
                      //     ],
                      //    ),
                      //  ),
                      ],
                    ),
                  );
                
              },
            )),
            
      ],
    );
  }
}