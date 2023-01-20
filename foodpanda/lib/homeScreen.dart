import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodpanda/Screens/destination_scroll.dart';
import 'package:foodpanda/Screens/destination_scroll2.dart';
import 'package:foodpanda/Screens/discount.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.favorite_border_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.local_mall_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        backgroundColor: Color(0xffD70F64),
        leading: Builder(
          builder: (BuildContext context) {
            return Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white, // Change Custom Drawer Icon Color
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  ),
                ),
              ],
            );
          },
        ),
      ),
      drawer: Drawer(
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              
              margin: EdgeInsets.only(bottom: 40),
              padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
              duration: Duration(milliseconds: 250),
              curve: Curves.easeInOut,
              
              decoration: BoxDecoration(
                color: Color(0xffD70F64),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Text(
                  'Nilout Stls',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.favorite_border_outlined,
                color: Color(0xffD70F64),
              ),
              title: Text('ຂອງໂປດ'),
            ),
            ListTile(
              leading: Icon(
                Icons.receipt_outlined,
                color: Color(0xffD70F64),
              ),
              title: Text(
                'ປະຫວັດການສັ່ງຊື້ & ການສັ່ງຊື້ຄືນໃໝ່',
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person_outlined,
                color: Color(0xffD70F64),
              ),
              title: Text('ໂປຣໄຟລ໌'),
            ),
            ListTile(
              leading: Icon(
                Icons.location_on_outlined,
                color: Color(0xffD70F64),
              ),
              title: Text('ທີ່ຢູ່'),
            ),
            ListTile(
              leading: Icon(
                Icons.credit_card,
                color: Color(0xffD70F64),
              ),
              title: Text(
                'ວິທີການຊຳລະເງິນ',
              ),
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.trophy,
                color: Color(0xffD70F64),
              ),
              title: Text('ເກມ ແລະ ລາງວັນ'),
            ),
            ListTile(
              leading: Icon(
                Icons.discount_outlined,
                color: Color(0xffD70F64),
              ),
              title: Text('ລະຫັດສ່ວນຫຼຸດ'),
            ),
            ListTile(
              leading: Icon(
                Icons.help_outline_rounded,
                color: Color(0xffD70F64),
              ),
              title: Text(
                'ສູນຊ່ວຍເຫຼືອ',
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.business_outlined,
                color: Color(0xffD70F64),
              ),
              title: Text('foodpanda ສຳລັບລູກຄ້າທຸລະກິດ'),
            ),
            ListTile(
              leading: Icon(
                Icons.card_giftcard_outlined,
                color: Color(0xffD70F64),
              ),
              title: Text('ຊວນໝູ່'),
            ),
          ],
        ),
      ),
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(20),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      keyboardAppearance: Brightness.dark,
                      textInputAction: TextInputAction.done,
                      autofocus: false,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(
                            Icons.search,
                            size: 35,
                          ),
                        ),
                        hintText: 'Search for shops & restaurants',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                backgroundColor: Color(0xffD70F64),

                // leading:Icon(Icons.wallpaper),

                elevation: 2.0,
                automaticallyImplyLeading: false,
                expandedHeight: 2.0,
                floating: true,
                snap: true,
              )
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      // margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      width: 400,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(4.0, 4.0),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/images/discount6.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 160,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(4.0, 4.0),
                              blurRadius: 6.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          'assets/images/discount1.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 160,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(4.0, 4.0),
                              blurRadius: 6.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/discount4.jpg',
                            fit: BoxFit.cover,
                          )),
                    ),
                  
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                DestinationScreen(),
                SizedBox(
                  height: 20,
                ),
                DestinationScreens(),
                SizedBox(
                  height: 20,
                ),
                DisCount(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 400,
                    height: 80,
                     decoration: BoxDecoration(
                          color: Colors.red,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(4.0, 4.0),
                              blurRadius: 6.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/promote1.png',
                            fit: BoxFit.cover,
                          )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )),
    );
  }
}
