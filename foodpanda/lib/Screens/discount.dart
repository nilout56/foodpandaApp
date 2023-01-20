import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodpanda/Models/destinations.dart';
import 'package:foodpanda/Models/discount_models.dart';

class DisCount extends StatefulWidget {
  const DisCount({super.key});

  @override
  State<DisCount> createState() => _DisCountState();
}

class _DisCountState extends State<DisCount> {
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
                "ສ່ວນຫຼຸດປະຈຳວັນ",
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0),
              ),
            ],
          ),
        ),
              SizedBox(height: 10.0,),
        Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: disCountModels.length,
              itemBuilder: (BuildContext context, int index) {
                DisCountModel disCountModel = disCountModels[index];
                return  Container(
                    margin: EdgeInsets.all(2.0),
                    width: 200.0,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          bottom: 15.0,
                          child: Container(
                            height: 120,
                            width: 200.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                        
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
                          child: Stack(children: [
                            Hero(
                              tag: disCountModel.imageUrl,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                  height: 180.0,
                                  width: 180.0,
                                  image: AssetImage(disCountModel.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                        
                          ]),
                        )
                      ],
                    ),
                  );
                
              },
            ))
      ],
    );
  }
}