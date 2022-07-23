import 'package:flutter/material.dart';

class Stf extends StatefulWidget {
  const Stf({Key? key}) : super(key: key);

  @override
  State<Stf> createState() => _StfState();
}

class _StfState extends State<Stf> {
  final caturl1 =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/VAN_CAT.png/1280px-VAN_CAT.png";
  int _sevgi = 0;
  int _miyav = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold kod iskeleti içinde appbar,floaractionbutton vs var.
      backgroundColor: Colors.amber.shade100, //Sayfanın genel arka plan rengi
      appBar: buildAppBar(),
      body: Container(
        color: Colors.amber.shade100,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildImageContainer(caturl1),
              buildImageContainer(caturl1),
              buildImageContainer(caturl1),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: buildImageContainer(caturl1),
              title: const Text(
                "KEDİ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _sevgi++;
                      });
                    },
                  ),
                  Row(
                    children: [
                      const Text(
                        "sevgi",
                      ),
                      Text("$_sevgi K"),
                      const Icon(
                        Icons.heart_broken_sharp,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _miyav++;
                          });
                        },
                      ),
                      const Text("miyav"),
                      Text("$_miyav K"),
                      const Icon(
                        Icons.add,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget buildImageContainer(String url) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(color: Colors.purple, width: 3),
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      // Uygulamanın üzerinde bulunan kısım
      elevation:
          0.0, //App bar ve Body atasındaki gölge Arttırırsak appbar daha belirgin hale gelir.
      centerTitle: true, //Başlık merkezde olur
      leading: IconButton(
        //App barda sol kısımda bulunan yer. Geri Gidecek.
        onPressed: () {
          print("Geri Gidecek.");
        },
        icon: const Icon(
          Icons.arrow_back_ios,
        ),
      ),
      title: Text(
        // Ortaya yazdığımız başlık.
        "KEDİLER", //başlık metni
        style: TextStyle(
          // başlık stil ayarları renk,boyur,kalınlık vs...
          color: Colors.orange, // Metnin rengi
          fontWeight: FontWeight.bold, // metnin kalınlığı
          fontSize: 30, // metnin boyutu
        ),
      ),
      actions: [
        InkWell(
            // eklenen icona ne şekilde tıklandığında neler olacağını belirler.
            onTap: () {},
            child: Icon(
              Icons.home,
            )),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.access_alarm_outlined),
        ),
      ],
    );
  }
}
