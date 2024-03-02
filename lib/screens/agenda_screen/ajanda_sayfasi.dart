import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:table_calendar/table_calendar.dart';

class AjandaSayfasi extends StatefulWidget {
  @override
  _AjandaSayfasiState createState() => _AjandaSayfasiState();
}

class _AjandaSayfasiState extends State<AjandaSayfasi> {
  // Yapıcı metod içinde initializeDateFormatting'i çağırın
  _AjandaSayfasiState() {
    initializeDateFormatting('tr_TR', null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajanda'),
      ),
      body: _buildAjandaBody(),
    );
  }

  Widget _buildAjandaBody() {
    return TableCalendar(
      locale: 'tr_TR',
      focusedDay: DateTime.now(),
      firstDay: DateTime.utc(2022, 1, 1),
      lastDay: DateTime.utc(2029, 12, 31),
      calendarFormat: CalendarFormat.month,
      startingDayOfWeek: StartingDayOfWeek.monday,
      // Takvim görünümü için gerekli ayarlamaları burada yapın.
    );
  }
}
