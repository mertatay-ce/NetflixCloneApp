import 'package:flutter/material.dart';
import 'package:netflix_clone/components/movie_detail.dart';

class MyNetflixScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 1,
        title: Text(
          "Benim Netflix'im",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ), // Netflix logosu
        actions: [
          IconButton(
            icon: Image.asset(
              "lib/assets/search_icon.png",
              width: 40,
            ), // İndirme butonu
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.menu_sharp,
              size: 40,
              color: Colors.white,
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
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        "https://occ-0-3175-2774.1.nflxso.net/dnm/api/v6/vN7bi_My87NPKvsBoib006Llxzg/AAAABTZ2zlLdBVC05fsd2YQAR43J6vB1NAUBOOrxt7oaFATxMhtdzlNZ846H3D8TZzooe2-FT853YVYs8p001KVFYopWi4D4NXM.png?r=229",
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hoşgeldin!",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Arial",
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(width: 4.0),
                          Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.notifications, color: Colors.white),
                ),
                title: Text(
                  "Bildirimler",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "Arial",
                  ),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                  size: 30,
                ),
                onTap: () {},
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  SizedBox(width: 8.0),
                  Image.network(
                    "https://occ-0-3175-2774.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABXOb1X0Ag0x-jUqmL1k9aGWuzh6OqfoBaIiuOjT7iTxkcBkjqHQQMRn5vm6Q0CtK6raf4VYsVc8du-oh5BFLmZh-bjlP0TESohAErO2AdtdRGXZywqjTpekp84e1JwF5_ihUX59yAlmJpfAWT0JsnqA0Yyf_-nKxUnkCy0dCBk71RvfUlNKfYHPOu5OQ5Rm7mUWWiWM51H8Fw2XGpQ5vpHSwkVDZsUOWuyLtll8MHqQCoMV3mYIPoyvrGcLsyeEggpk23o2R3wX7hlEk3L1o8-fFcFdE1ZrydGuOAHiOQ7r_WkGX4EcV1A.jpg?r=dc3",
                    width: 180,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Yeni İçerik",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        "31. SAG Ödül Töreni",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        "25 Şub",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  SizedBox(width: 8.0),
                  Image.network(
                    "https://occ-0-3175-2774.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABerNvIGh2EmlO76spga55i1ufdpbqEM6QIFiuOOZsJKVQNFOhD3QRDVOs3Laz6n33RaqpHm3DWetTi-rumnu_gRlpv7FMf1-3P_1zSWpWoTcq5LYuJDe2lgh8tBnYKziwpMA5_hMI1qaYztYPbuoIUjH6NRZe41UDGL9KepfIlad4MaWvqbgKabidT0M4FWFlEelMKO_1j0OSIujA45oq6ho3mVBewS0rVxODivAUUtvQToXLYfIpTxCB3GIqBfCJwOHDKbiAJjn52APS1UfouDIWk-wpqRLO_CK8F-xspg13CH24mo1iA.jpg?r=ed4",
                    width: 180,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Yeni İçerik",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        "The Witcher: Sirens Of The Deep",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        "2025",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(8),
                  child: Image.asset(
                    "lib/assets/download_icon.png",
                    width: 25,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "İndirilenler",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "Arial",
                  ),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                  size: 30,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
