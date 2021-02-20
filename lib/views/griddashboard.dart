import 'package:chatapp/views/chatrooms.dart';
import 'package:chatapp/views/doctorslist.dart';
import 'package:chatapp/views/payment.dart';
import 'package:chatapp/views/search.dart';
import 'package:chatapp/views/shop.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Doctors",
      subtitle: "Physician, Orthopadic",
      event: "",
      img: "assets/images/doc3.png",
      root: DoctorsList());

  Items item2 = new Items(
    title: "Payments",
    subtitle: "Google Pay, Paytm",
    event: "",
    img: "assets/images/payment3.png",
    root: Payment(),
  );
  Items item3 = new Items(
      title: "New Messages",
      subtitle: "1 new Message",
      event: "",
      img: "assets/images/icons8big.png",
      root: ChatRoom());
  Items item4 = new Items(
      title: "Chat Box",
      subtitle: "Search for Doctors here",
      event: "",
      img: "assets/images/icons8open.png",
      root: Search());
  Items item5 = new Items(
    title: "Shop",
    subtitle: "Medicine, Masks",
    event: "",
    img: "assets/images/Medical_Store.png",
    root: Shop(),
  );
  Items item6 = new Items(
    title: "Settings",
    subtitle: "",
    event: "",
    img: "assets/images/setting.png",
    root: null,
  );
  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    return Container(
      color: Colors.white70,
      child: Flexible(
        child: GridView.count(
            childAspectRatio: 1.0,
            padding: EdgeInsets.only(left: 16, right: 16, top: 150),
            crossAxisCount: 2,
            crossAxisSpacing: 18,
            mainAxisSpacing: 18,
            children: myList.map((data) {
              return Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(143, 148, 251, 1),
                      Color.fromRGBO(143, 148, 251, .6),
                    ]),
                    borderRadius: BorderRadius.circular(10)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => data.root));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        data.img,
                        width: 42,
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(data.title,
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600))),
                      SizedBox(
                        height: 8,
                      ),
                      Text(data.subtitle,
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.white38,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600))),
                      SizedBox(
                        height: 14,
                      ),
                      Text(data.event,
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.white70,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600))),
                    ],
                  ),
                ),
              );
            }).toList()),
      ),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Widget root;
  Items({this.title, this.subtitle, this.event, this.img, this.root});
}
