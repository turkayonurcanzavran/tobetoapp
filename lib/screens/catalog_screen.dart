import 'package:flutter/material.dart';
import 'package:tobeto_app/widgets/drawer/comp_drawer.dart';
import 'package:tobeto_app/widgets/speed_dial/SpeedDialWidget.dart';

class VideoPreview extends StatelessWidget {
  final String videoUrl;

  VideoPreview({required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Burada videoyu açmak için gerekli işlevi çağırabilirsiniz
        // Örneğin, video oynatma sayfasına geçiş yapabilirsiniz
        // Navigator.push(context, MaterialPageRoute(builder: (context) => VideoPlayerPage(videoUrl)));
        print('Videoyu aç');
      },
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/video_thumbnail.jpg'), // Video önizleme resminin yolu
            fit: BoxFit.cover,
          ),
        ),
        child: Icon(
          Icons.play_circle_fill,
          size: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
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
      // Drawer ve FAB'ı eklemeyi unutmayın
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/backround.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Ara...',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    suffixIcon: Icon(Icons.search),
                  ),
                  onChanged: (value) {
                    // Arama işlemleri
                    print('Arama çubuğu: $value');
                  },
                ),
              ),
            ),
            SizedBox(height: 12.0),
            // İki video önizlemesini ekleyin
            VideoPreview(videoUrl: 'assets/videos/chibi.mp4'),
            SizedBox(height: 12.0),
            VideoPreview(videoUrl: 'assets/videos/chibi.mp4'),
          ],
        ),
      ),
      endDrawer: const CompDrawer(),
      floatingActionButton: buildSpeedDial(context),
    );
  }
}
