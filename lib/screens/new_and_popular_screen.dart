import 'package:flutter/material.dart';
import 'package:netflix_clone/components/movie_detail.dart';

class NewAndPopularScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 1,
        title: Text(
          "Yeni ve Popüler",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ), // Netflix logosu
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
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 8.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Yatay kaydırma için
                child: Row(
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
                      child: Row(
                        children: [
                          Icon(Icons.movie, color: Colors.white),
                          SizedBox(width: 8.0),
                          Text(
                            "Çok Yakında",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Arial",
                              fontSize: 12,
                            ),
                          ),
                        ],
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
                      child: Row(
                        children: [
                          Icon(Icons.group, color: Colors.white),
                          SizedBox(width: 8.0),
                          Text(
                            "Herkes Bunları İzliyor",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Arial",
                              fontSize: 12,
                            ),
                          ),
                        ],
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
                      onPressed: () => {}, // 📌 Transparan modal aç
                      child: Row(
                        children: [
                          Icon(
                            Icons.local_movies_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            "Top 10 Dizi Listesi",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Arial",
                              fontSize: 12,
                            ),
                          ),
                        ],
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
                      onPressed: () => {}, // 📌 Transparan modal aç
                      child: Row(
                        children: [
                          Icon(
                            Icons.local_movies_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            "Top 10 Film Listesi",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Arial",
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8.0), // En sağda da boşluk bırakabilirsiniz
                  ],
                ),
              ),
              SizedBox(height: 8.0),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    MovieDetail(
                      imageUrl:
                          "https://occ-0-3175-2774.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABf6T2DdxIoyj32kFWNhGb3-12hze1poEIhodYOQ8Xn6jxBBWq5C7NBcRJ_epu6Zd0TVIX8D3W5QJ-LbwTofcDlx2QxSAZi4xxvD8N7jVofm_9btamB6sNRYbcTI4cPgaojUL.jpg?r=4e1",
                      title: "KOLKATA",
                      subtitle: "KALKÜTA",
                      description:
                          "Dürüst polis Arjun Maitra, Kalküta'nın korkulan mafya lideri Bagha ve adamlarıyla uğraşmaya başlayınca bozuk bir sistemle ve kanlı çete savaşlarıyla mücadele etmek zorunda kalır.",
                      genres: [
                        "Sert Gerçekçi",
                        "Gerilim",
                        "Hindistan Yapımı",
                        "Polis Dedektifleri",
                        "Drama",
                      ],
                    ),
                    Divider(),
                    SizedBox(height: 8.0),
                    MovieDetail(
                      imageUrl:
                          "https://occ-0-3175-2774.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABY176HqeVpQ1eO7WdintBgbJ9uMhMytoRXWOOznWy8eWy9wKMhPkOIg0VZY4sgrr970x77GwG8ibrt83OEwOhzxLbz-XRZ3-yr33LlBMc6o3EtZttgfqnVLsr5GQgZMrycMD.jpg?r=1d6",
                      title: "FIRLA!",
                      subtitle: "FIRLA",
                      description:
                          "Spor bursu kazanan genç bir koşucu böylece hayatta ikinci bir şans yakalar. Yalanları ayağına dolanmadan hayallerinin peşinden gidebilecek mi?",
                      genres: [
                        "Sürükleyici",
                        "Genç",
                        "Sırlarla Dolu",
                        "Güney Afrika Yapımı",
                        "Arkadaşlık",
                        "Dizi",
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
