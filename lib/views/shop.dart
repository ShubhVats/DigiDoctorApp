import 'package:chatapp/views/paymentshop.dart';
import 'package:chatapp/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Shop extends StatelessWidget {
  Items item1 = new Items(
      title: "Mask",
      subtitle: "Rs 100, Cotton",
      event: "",
      img: "assets/images/mask2.png",
      root: PaymentShop());

  Items item2 = new Items(
    title: "Sanitizer",
    subtitle: "Rs 50, 20% alcohol",
    event: "",
    img: "assets/images/sanitizer.png",
    root: PaymentShop(),
  );
  Items item3 = new Items(
      title: "Melmet500",
      subtitle: "Rs 10/tablet",
      event: "",
      img: "assets/images/melmet500.jpg",
      root: PaymentShop());
  Items item4 = new Items(
      title: "Simvastatin",
      subtitle: "Rs 50/tablet",
      event: "",
      img: "assets/images/simvastatin.jpeg",
      root: PaymentShop());
  Items item5 = new Items(
    title: "Lisinopril",
    subtitle: "Rs 20/tablet",
    event: "",
    img: "assets/images/lisinopril.jpg",
    root: PaymentShop(),
  );
  Items item6 = new Items(
    title: "Levothyroxine",
    subtitle: "Rs 100/tablet",
    event: "",
    img: "assets/images/levothyroxine.jpg",
    root: PaymentShop(),
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
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 15, bottom: 15),
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
                          width: 102,
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
                                    fontSize: 11,
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
