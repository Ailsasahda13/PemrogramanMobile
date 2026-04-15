import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Gunung Fuji',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Shizuoka, Pulau Honshu, Jepang',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );

    // langkah 2: widget buttonSection
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // langkah 1: widget text section
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Gunung Fuji adalah gunung tertinggi di Jepang dengan ketinggian sekitar 3.776 meter. '
        'Gunung ini terletak di Pulau Honshu, tepatnya di perbatasan Prefektur Shizuoka dan Yamanashi. '
        'Gunung Fuji merupakan gunung berapi aktif yang terakhir meletus pada tahun 1707. '
        'Gunung ini terkenal karena bentuknya yang simetris dan puncaknya yang sering tertutup salju, '
        'sehingga menjadi ikon keindahan alam Jepang. '
        'Pada tahun 2013, Gunung Fuji ditetapkan sebagai situs warisan dunia oleh UNESCO. '
        'Hingga saat ini, Gunung Fuji menjadi salah satu destinasi wisata paling populer di Jepang.\n\n '
        '-Ailsa Sahda Garizah, 244107060006-',
        
        softWrap: true,
        textAlign: TextAlign.justify, 
      ),
    );

  // Langkah 2: tambah variabel text section ke body
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
  
        // langkah 3: ubah menjadi ListView
          body: ListView(
          children: [
            Image.asset(
              'images/fuji.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}