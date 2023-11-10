import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [str, feed],
          ),
        ),
      ),
    );
  }
}

final str = Container(
  height: 110,
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: _story_friend_pp(11),
  ),
);

final feed = GridView.extent(
    //widget yang akan ditampilkan dalam 1 baris adalah 2
    physics: NeverScrollableScrollPhysics(),
    maxCrossAxisExtent: 500,
    mainAxisSpacing: 5,
    childAspectRatio: 18 / 25,
    shrinkWrap: true,
    children: [
      //card ditampilkan disini
      //saya membuat custom card di bawah agar kodingan tidak terlalu panjang
      CustomCard(
          title: "Annisa Maulidya",
          image: 'assets/images/img1.jpg',
          ppfeed: 'assets/images/pp1.jpg',
          city: 'Bekasi'),
      CustomCard(
          title: "Firman Arasyid",
          image: 'assets/images/img2.jpg',
          ppfeed: 'assets/images/pp2.jpg',
          city: 'Jakarta Selatan'),
      CustomCard(
          title: "Siti Aisyah",
          image: 'assets/images/img3.jpg',
          ppfeed: 'assets/images/pp3.jpg',
          city: 'Jakarta Timur'),
      CustomCard(
          title: "Rahman Hafiz",
          image: 'assets/images/img4.jpg',
          ppfeed: 'assets/images/pp4.jpg',
          city: 'Jakarta Timur'),
      CustomCard(
          title: "Ayu Dwi Febriana",
          image: 'assets/images/img5.jpg',
          ppfeed: 'assets/images/pp5.jpg',
          city: 'Bogor'),
      CustomCard(
          title: "Miauuuuuuuwwww",
          image: 'assets/images/img6.jpg',
          ppfeed: 'assets/images/pp6.jpg',
          city: 'Yogyakarta'),
      CustomCard(
          title: "Farah Claudya",
          image: 'assets/images/img7.jpg',
          ppfeed: 'assets/images/pp7.jpg',
          city: 'Denpasar'),
    ]);

mixin i {}

List<Container> _story_friend_pp(int count) => List.generate(
    count,
    (i) => Container(
          width: 100,
          padding: EdgeInsets.all(5),
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Column(
            children: [
              GFBorder(
                  radius: Radius.circular(40),
                  color: Color.fromARGB(255, 226, 0, 170),
                  dashedLine: const [1, 0],
                  strokeWidth: 2,
                  type: GFBorderType.circle,
                  padding: EdgeInsets.all(3),
                  child: CircleAvatar(
                    radius: 38,
                    backgroundImage: AssetImage('assets/images/pp$i.jpg'),
                  )),
              SizedBox(
                height: 5,
              ),
              Text(
                '@Teman $i',
                style: TextStyle(
                    fontSize: 10, color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ],
          ),
        ));

//membuat customcard yang bisa kita panggil setiap kali dibutuhkan
// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  //ini adalah konstruktor, saat class dipanggil parameter konstruktor wajib diisi
  //parameter ini akan mengisi title dan gambar pada setiap card
  CustomCard(
      {required this.title,
      required this.image,
      required this.city,
      required this.ppfeed});

  String title;
  String image;
  String city;
  String ppfeed;

  @override
  Widget build(BuildContext context) {
    return Card(
      //menambahkan bayangan
      semanticContainer: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GFBorder(
                    radius: Radius.circular(20),
                    color: Color.fromARGB(255, 226, 0, 170),
                    dashedLine: const [1, 0],
                    strokeWidth: 2,
                    type: GFBorderType.circle,
                    padding: EdgeInsets.all(1),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage(ppfeed),
                    )),
                Column(
                  children: [
                    Text(
                      '  $title',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      city,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          AspectRatio(
              aspectRatio: 18.0 / 18.0,
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.fill,
              )),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.favorite_border_outlined,
                  color: Color.fromARGB(255, 34, 34, 34),
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.comment,
                  color: Color.fromARGB(255, 34, 34, 34),
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.share_outlined,
                  color: Color.fromARGB(255, 34, 34, 34),
                ),
                SizedBox(
                  width: 260,
                ),
                Icon(
                  Icons.bookmark_add_outlined,
                  color: Color.fromARGB(255, 34, 34, 34),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Disukai oleh UnivBanisaleh2023 dan 21.430 lainnya',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Maka nikmat Tuhanmu yang manakah yang kamu dustakan ? Qs 55:13',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lihat semua 2.480 komentar',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 56, 56, 56),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Tambahkan Komentar...',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 56, 56, 56),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '12 jam yang lalu',
                    style: TextStyle(
                      fontSize: 10,
                      color: Color.fromARGB(255, 56, 56, 56),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
