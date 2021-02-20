import 'package:chatapp/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/views/search.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class DoctorsList extends StatelessWidget {
  Items item1 = new Items(
      title: "Dr.Satyadev",
      subtitle: "Laproscopic Surgeon",
      event: "DoctorID 1",
      img: "assets/images/doc3.png",
      root: Search());

  Items item2 = new Items(
    title: "Dr.Parvanchal Singh",
    subtitle: "Cardiologist",
    event: "DoctorID 2",
    img: "assets/images/doc3.png",
    root: Search(),
  );
  Items item3 = new Items(
      title: "Dr.Pallavi Sule",
      subtitle: "Dermatologost",
      event: "DoctorID 3",
      img: "assets/images/doc3.png",
      root: Search());
  Items item4 = new Items(
      title: "Dr. Naved Ansari",
      subtitle: "Orthopadic Surgeon",
      event: "DoctorID 4",
      img: "assets/images/doc3.png",
      root: Search());
  Items item5 = new Items(
    title: "Dr.Rajesh Naval",
    subtitle: "Dental Surgeon",
    event: "DoctorID 5",
    img: "assets/images/doc3.png",
    root: Search(),
  );
  Items item6 = new Items(
    title: "Dr.Atul Malhotra",
    subtitle: "Homeopathy Consultant",
    event: "DoctorID 6",
    img: "assets/images/doc3.png",
    root: Search(),
  );
  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    return Scaffold(
      appBar: appBarMain(context),
      body: Container(
        color: Colors.white70,
        child: Flexible(
          child: GridView.count(
              childAspectRatio: 1.0,
              padding: EdgeInsets.only(left: 16, right: 16, top: 15),
              crossAxisCount: 1,
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
                          width: 52,
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(data.title,
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600))),
                        SizedBox(
                          height: 8,
                        ),
                        Text(data.subtitle,
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.white70,
                                    fontSize: 12,
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
