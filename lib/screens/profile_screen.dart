import 'package:flutter/material.dart';
import 'package:tobeto_app/widgets/drawer/comp_drawer.dart';
import 'package:tobeto_app/widgets/speed_dial/SpeedDialWidget.dart';
import 'package:tobeto_app/screens/home_screen/footer.dart';
import "package:tobeto_app/screens/performance_model/detail_page.dart";

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/image/tobeto-white-logo.png",
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
      ),
      endDrawer: const CompDrawer(),
      floatingActionButton: buildSpeedDial(context),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/image/profile_picture.jpg'),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Türkay Onurcan Zavran',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'Mobile  Developer',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20.0),
              const Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.blue,
                  ),
                  title: Text('E-posta Adresi'),
                  subtitle: Text('turkayonurcanzavran@gmail.com'),
                ),
              ),
              const Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.school,
                    color: Colors.deepPurpleAccent,
                  ),
                  title: Text('Eğitim'),
                  subtitle: Text('Erciyes Üniversitesi'),
                ),
              ),
              const Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                  title: Text('Telefon Numarası'),
                  subtitle: Text('0509 000 00 00'),
                ),
              ),
              const Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.cake,
                    color: Colors.amber,
                  ),
                  title: Text('Doğum Tarihi'),
                  subtitle: Text('00.00.1994'),
                ),
              ),
              const Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: ListTile(
                  leading: Icon(Icons.person, color: Colors.pink),
                  title: Text('Hakkımda'),
                  subtitle: Text(
                      'Flutter, Dart, UI/UX Design \nFlutter, Dart, UI/UX Design \nFlutter, Dart, UI/UX Design \nFlutter, Dart, UI/UX Design '),
                ),
              ),
              const Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.star,
                    color: Colors.lime,
                  ),
                  title: Text('Yetkinliklerim'),
                  subtitle: Text('Aktif Öğrenme'),
                ),
              ),
              const Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: ListTile(
                  leading: Icon(Icons.language),
                  title: Text('Yabancı Dillerim'),
                  subtitle: Text('İngilizce \nTemel Seviye (A1,A2)'),
                ),
              ),
              const Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.account_box,
                    color: Colors.lightBlue,
                  ),
                  title: Text('Medya Hesaplarım'),
                  subtitle: Text('Turkayonurcanzavran@instaxfaceyoutube.com'),
                ),
              ),
              const Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: ListTile(
                  leading: Icon(Icons.folder),
                  title: Text('Sertifikalarım'),
                  subtitle: Text('Henüz bir sertifika yüklemedin'),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage()),
                    );
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.black38,
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Tobeto İşte Başarı Modelim'),
                        Text(''),
                        Image.asset(
                          'assets/image/diatonik.png',
                          width: double.infinity,
                          height: 150.0,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.text_snippet,
                    color: Colors.brown,
                  ),
                  title: Text('Tobeto Seviye Testlerim'),
                  subtitle: Text(
                      'Herkes için Kodlama 2C Değerlendirme Sınavı 16-10-2023 \n52.00'),
                ),
              ),
              const Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: ListTile(
                  title: Text('Yetkinlik Rozetlerim'),
                  subtitle: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/image/1.jpg'),
                      ),
                      SizedBox(width: 8.0),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/image/2.jpg'),
                      ),
                      SizedBox(width: 8.0),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/image/3.jpg'),
                      ),
                      SizedBox(width: 8.0),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/image/4.jpg'),
                      ),
                      SizedBox(width: 8.0),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/image/5.jpg'),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const ListTile(
                      leading: Icon(
                        Icons.width_wide_sharp,
                        color: Colors.red,
                      ),
                      title: Text('Aktivite Haritam'),
                      subtitle: Text('Flutter, Dart, UI/UX Design'),
                    ),
                    Image.asset(
                      'assets/image/activity.png',
                      fit: BoxFit.cover,
                      height: 65.0,
                    ),
                  ],
                ),
              ),
              const Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.architecture_sharp,
                    color: Colors.teal,
                  ),
                  title: Text('Eğitim Hayatım ve Deneyimlerim'),
                  subtitle:
                      Text('Henüz bir eğitim ve deneyim bilgisi eklemedin.'),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
