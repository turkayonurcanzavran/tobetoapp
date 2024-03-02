import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tobeto_app/widgets/drawer/comp_drawer.dart';
import 'package:tobeto_app/widgets/speed_dial/SpeedDialWidget.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  late CalendarFormat _calendarFormat;
  late DateTime _focusedDay;
  late DateTime _selectedDay;

  List<AjandaKaydi> ajandaKayitlari = [
    AjandaKaydi(
      tarih: DateTime.utc(2023, 3, 1),
      konu: 'C # Programming \nGürkan İlişen ',
    ),
    AjandaKaydi(
      tarih: DateTime.utc(2022, 1, 5),
      konu: 'Dart dilini öğrenme \nHalit Enes Kalaycı',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _calendarFormat = CalendarFormat.month;
    _focusedDay = DateTime.now();
    _selectedDay = DateTime.now();
  }

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
      body: Container(
        padding: EdgeInsets.all(13.0),
        child: Column(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2021, 1, 1),
              lastDay: DateTime.utc(2025, 12, 31),
              focusedDay: DateTime.now(),
              calendarFormat: _calendarFormat,
              onFormatChanged: (format) {
                setState(() {
                  _calendarFormat = format;
                });
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
            ),
            SizedBox(height: 16.0),
            Text(
              'Seçilen Tarih: ${_selectedDay.toLocal()}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                  // arama
                  print('Arama çubuğu: $value');
                },
              ),
            ),
            SizedBox(height: 16.0),
            for (var kayit in ajandaKayitlari) ...[
              AjandaCard(
                tarih: kayit.tarih,
                konu: kayit.konu,
              ),
              SizedBox(height: 8.0),
            ],
          ],
        ),
      ),
    );
  }
}

class AjandaKaydi {
  final DateTime tarih;
  final String konu;

  AjandaKaydi({required this.tarih, required this.konu});
}

class AjandaCard extends StatelessWidget {
  final DateTime tarih;
  final String konu;

  AjandaCard({required this.tarih, required this.konu});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: ListTile(
        title: Text('Tarih: ${tarih.toLocal()}'),
        subtitle: Text('Konu: $konu'),
      ),
    );
  }
}
