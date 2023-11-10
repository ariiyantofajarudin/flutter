import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/screen/message.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [profile, gridy],
          ),
        ),
      ),
    );
  }
}

final gridy = GridView.extent(
  //widget yang akan ditampilkan dalam 1 baris adalah 2
  physics: NeverScrollableScrollPhysics(),
  maxCrossAxisExtent: 150.0,
  crossAxisSpacing: 4,
  mainAxisSpacing: 4,
  shrinkWrap: true,
  padding: const EdgeInsets.all(10),
  children: _buildGridTileList(15),
);

List<Container> _buildGridTileList(int count) => List.generate(
    count,
    (i) => Container(
        padding: const EdgeInsets.all(1),
        child: Image.asset('assets/images/img$i.jpg')));

final profile = Stack(
  children: [
    Column(
      children: [headerImage, personalInfo, buttongroup1],
    ),
    numberInfo,
  ],
);

final gridded = GridView.extent(
    maxCrossAxisExtent: 400.0,
    crossAxisSpacing: 5,
    mainAxisSpacing: 5,
    // childAspectRatio: (1 / 1),
    // addAutomaticKeepAlives: true,
    // addRepaintBoundaries: true,
    shrinkWrap: true,
    padding: EdgeInsets.all(10.0),
    children: <Widget>[
      Container(
        padding: EdgeInsets.all(8),
        child: Text("He'd have you all unravel at the"),
        color: Colors.teal[100],
      ),
      Container(
        padding: EdgeInsets.all(8),
        child: Text('Heed not the rabble'),
        color: Colors.teal[200],
      ),
      Container(
        padding: EdgeInsets.all(8),
        child: Text('Sound of screams but the'),
        color: Colors.teal[300],
      ),
      Container(
        padding: EdgeInsets.all(8),
        child: Text('Who scream'),
        color: Colors.teal[400],
      ),
      Container(
        padding: EdgeInsets.all(8),
        child: Text('Revolution is coming...'),
        color: Colors.teal[500],
      ),
      Container(
        padding: EdgeInsets.all(8),
        child: Text('Revolution, they...'),
        color: Colors.teal[600],
      ),
    ]);

final headerImage = Container(
  width: double.infinity,
  height: 320,
  decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/images/cover.jpg'), fit: BoxFit.cover)),
  child: Container(
    margin: const EdgeInsets.only(top: 44),
    child: const Column(
      children: [
        CircleAvatar(
          radius: 64,
          backgroundImage: AssetImage('assets/images/profiles.jpg'),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Ariyanto Fajarudin',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'IT Network Engineer, Cyber Security',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white54),
        )
      ],
    ),
  ),
);

final personalInfo = Container(
  margin: const EdgeInsets.all(54),
  child: const Column(
    children: [
      SizedBox(height: 20),
      Row(
        children: [
          Icon(
            Icons.mail,
            color: Color.fromRGBO(4, 79, 79, 0.698),
          ),
          SizedBox(
            width: 15,
          ),
          Text('ariiyantofajarudin2@gmail.com')
        ],
      ),
      SizedBox(
        height: 15,
      ),
      Row(
        children: [
          Icon(
            Icons.phone_android,
            color: Color.fromRGBO(4, 79, 79, 0.698),
          ),
          SizedBox(
            width: 15,
          ),
          Text('+62 85161072310')
        ],
      ),
      SizedBox(
        height: 15,
      ),
      Row(
        children: [
          Icon(
            Icons.group_add,
            color: Color.fromRGBO(4, 79, 79, 0.698),
          ),
          SizedBox(
            width: 15,
          ),
          Text('Add to Group')
        ],
      ),
      SizedBox(
        height: 15,
      ),
      Row(
        children: [
          Icon(
            Icons.comment,
            color: Color.fromRGBO(4, 79, 79, 0.698),
          ),
          SizedBox(
            width: 15,
          ),
          Text('Show all comments')
        ],
      ),
      SizedBox(
        height: 15,
      ),
      Row(
        children: [
          SizedBox(
            width: 15,
          ),
          Text('Diikuti oleh ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
          Text(
            'fauziahahaha, mariahpupah, dan 20 lainnya..',
            style: TextStyle(fontSize: 10),
          )
        ],
      )
    ],
  ),
);

final buttongroup1 = Center(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        padding: EdgeInsets.all(10),
        child: followButton,
      ),
      Container(
        padding: EdgeInsets.all(10),
        child: messageButton,
      )
    ],
  ),
);

final followButton = ElevatedButton(
  style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: const Color.fromRGBO(4, 79, 79, 0.698)),
  onPressed: () {},
  child: const Text('FOLLOW'),
);
final messageButton = ElevatedButton(
  style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: const Color.fromARGB(176, 175, 255, 255)),
  onPressed: () {
    Get.to(const messageScreen());
  },
  child: const Text(
    'Message',
    style: TextStyle(
      color: Color.fromARGB(255, 34, 34, 34),
    ),
  ),
);

final numberInfo = Container(
  height: 100,
  decoration: BoxDecoration(boxShadow: const [
    BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(2, 4))
  ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
  margin: const EdgeInsets.symmetric(vertical: 270, horizontal: 24),
  child: const Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'photos',
            style: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '20',
            style: TextStyle(
                color: Color.fromARGB(255, 8, 177, 166),
                fontWeight: FontWeight.bold,
                fontSize: 16),
          )
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Followers',
            style: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '1280',
            style: TextStyle(
                color: Color.fromARGB(255, 8, 177, 166),
                fontWeight: FontWeight.bold,
                fontSize: 16),
          )
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Following',
            style: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '50',
            style: TextStyle(
                color: Color.fromARGB(255, 8, 177, 166),
                fontWeight: FontWeight.bold,
                fontSize: 16),
          )
        ],
      ),
    ],
  ),
);
