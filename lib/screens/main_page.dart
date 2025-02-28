import 'package:flutter/material.dart';
import 'package:netflix_clone/components/grid_card.dart';
import 'package:netflix_clone/utils/movie_list.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String _selectedCategory = 'Tümü';
  MovieList _movieList = MovieList();

  void _showCategoriesModal(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withValues(
        alpha: 0.85,
      ), // Sayfanın arka planını flu yap
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: _buildCategoryList(context),
        );
      },
    );
  }

  // 📌 Kategori Listesi
  Widget _buildCategoryList(BuildContext context) {
    List<String> categories = [
      'Ana Sayfa',
      'Listem',
      'İndirilebilir İçerik',
      '2025 Netflix Oscarları',
      'Aksiyon',
      'Anime',
      'Belgeseller',
      'Bilim Kurgu',
      'Çocuk ve Aile',
      'Dramalar',
      'Eleştirmenlerden Tam Not Alan',
      'Fantastik',
      'Gerilimler',
      'Gişe Rekortmenleri',
      'Komediler',
      'Korku',
      'Müzik ve Müzikaller',
      'Reality Programları ve Talk Şovlar',
      'Romantizm',
      'Spor',
      'Stand-Up',
      'Türk Yapımları',
      'WWE',
      'Sesli Betimleme: Türkçe',
    ];

    return Container(
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        color: Colors.transparent, // Arka plan transparan
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.0),
                  child: ListTile(
                    title: Text(
                      categories[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Arial",
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      setState(() {
                        _selectedCategory = categories[index];
                      });
                      // 📌 Modalı kapat
                    },
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(12),
            ),
            onPressed: () => {Navigator.pop(context)},
            child: Icon(Icons.close, size: 24),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.grey[800], // Arka plan rengini ayarla
        elevation: 0, // Gölgeyi kaldır
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          child: Image.asset(
            'lib/assets/netflix_icon.png',
            width: 40,
          ), // Netflix logosu
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              "lib/assets/download_icon.png",
              width: 40,
            ), // İndirme butonu
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              "lib/assets/search_icon.png",
              width: 40,
            ), // Arama butonu
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 8.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 1.0),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Diziler",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Arial",
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 1.0),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Filmler",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Arial",
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 1.0),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed:
                        () => _showCategoriesModal(
                          context,
                        ), // 📌 Transparan modal aç
                    child: Row(
                      children: [
                        Text(
                          "Kategoriler",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Arial",
                            fontSize: 12,
                          ),
                        ),
                        Icon(Icons.arrow_drop_down, color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              GridCard(),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Filmler",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Tümünü Gör",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () => {},
                        icon: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 100,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 1,
                  ),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(4),
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Image.network(
                        _movieList.imageUrls[index], // Örnek film kapağı URL'si
                        width: 100,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
