import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İşte Başarı Modeli'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Başlık
            Text(
              'Tobeto "İşte Başarı Modeli',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 10.0),

            // Resim
            Image.asset(
              'assets/image/diatonik.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 10.0),

            // Yazı
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(
                    text: '4.4 Yeni dünyaya hazırlanıyorum \n',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 104, 100, 97),
                    ),
                  ),
                  TextSpan(
                    text: '4.4 Profesyonel duruşumu geliştiriyorum \n',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.green,
                    ),
                  ),
                  TextSpan(
                    text: '3.9 Kendimi tanıyor ve yönetiyorum \n',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 218, 177, 95),
                    ),
                  ),
                  TextSpan(
                    text: '4.9 Yaratıcı ve doğru çözümler geliştiriyorum \n',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 54, 16, 102),
                    ),
                  ),
                  TextSpan(
                    text: '4.8 Başkaları ile birlikte çalışıyorum  \n',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 99, 55, 2),
                    ),
                  ),
                  TextSpan(
                    text: '4.8 Kendimi sürekli geliştiriyorum   \n',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 178, 96, 255),
                    ),
                  ),
                  TextSpan(
                    text: '4.8 Sonuç ve başarı odaklıyım \n',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 141, 52, 123),
                    ),
                  ),
                  TextSpan(
                    text: '4.8 Anlıyorum ve anlaşılıyorum ',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(215, 126, 111, 80),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
