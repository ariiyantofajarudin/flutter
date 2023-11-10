import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              children: [
                SizedBox(
                  width: 360,
                ),
                Icon(Icons.mail_rounded),
                Text(
                  'Buat Baru',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              height: 800,
              child: chat,
            ),
          ],
        ),
      ),
    );
  }
}

final chat = ListView.builder(
  itemBuilder: (context, index) {
    return GFListTile(
      avatar: GFBorder(
          radius: Radius.circular(30),
          color: Color.fromARGB(255, 226, 0, 170),
          dashedLine: const [1, 0],
          strokeWidth: 2,
          type: GFBorderType.circle,
          padding: EdgeInsets.all(1),
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(pp[index]),
          )),
      titleText: friend[index],
      subTitleText: current_chat[index],
      description: Text(
        date[index],
        style: TextStyle(fontSize: 10),
      ),
    );
  },
  itemCount: friend.length,
);
final friend = [
  "Ajay Pratama",
  "Asyfa Nur Cahya",
  "Siti Fauziah",
  "Ahmad Maulana Yusuf",
  "Fajri Alihsan",
  "Iskandar",
  "Doni Soekamti",
  "Faisal",
  "Imam",
  "Citra",
  "Zainul",
  "Rahmat",
  "Ilham",
  "Feby",
];
final List current_chat = [
  "Anda : Selamat Pagi",
  "Hai apa kabar kawan ku",
  "Besok sibuk enggak ? Main yukk",
  "Anda : Oke nanti aku ke sana ya",
  "Kapan nih jadi nya kawan ?",
  "Anda : Gimana kemarin hasil nya ?",
  "Oke terimakasih",
  "Anda : Selamat Pagi",
  "Hai apa kabar kawan ku",
  "Besok sibuk enggak ? Main yukk",
  "Anda : Oke nanti aku ke sana ya",
  "Kapan nih jadi nya kawan ?",
  "Anda : Gimana kemarin hasil nya ?",
  "Oke terimakasih"
];
final List pp = [
  "assets/images/pp0.jpg",
  "assets/images/pp1.jpg",
  "assets/images/pp2.jpg",
  "assets/images/pp3.jpg",
  "assets/images/pp4.jpg",
  "assets/images/pp5.jpg",
  "assets/images/pp6.jpg",
  "assets/images/pp7.jpg",
  "assets/images/pp8.jpg",
  "assets/images/pp9.jpg",
  "assets/images/pp10.jpg",
  "assets/images/pp1.jpg",
  "assets/images/pp2.jpg",
  "assets/images/pp3.jpg",
];
final List date = [
  "20 Oktober 2023, 19:25",
  "20 Oktober 2023, 19:25",
  "20 Oktober 2023, 18:00",
  "20 Oktober 2023, 18:00",
  "20 Oktober 2023, 12:00",
  "20 Oktober 2023, 12:00",
  "15 Oktober 2023, 16:20",
  "15 Oktober 2023, 16:20",
  "20 September 2023, 17:40",
  "20 September 2023, 17:40",
  "12 September 2023, 18:00",
  "12 September 2023, 18:00",
  "10 Agustus 2023, 19:20",
  "10 Agustus 2023, 19:20",
];
