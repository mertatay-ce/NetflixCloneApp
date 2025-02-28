import 'package:flutter/material.dart';

class MovieDetail extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String description;
  final List<String> genres;

  MovieDetail({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.genres,
  });

  @override
  _MovieDetailState createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Arka plan resmi
        Container(
          height: 250,
          width: double.infinity,
          child: Image.network(
            widget.imageUrl, // Parametre olarak gelen URL
            fit: BoxFit.cover,
          ),
        ),
        // Gradyan kaplama (resmin altında)
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
            ),
          ),
        ),
        // İçerik alanı
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Başlık
              Text(
                widget.title, // Parametre olarak gelen başlık
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Alt başlık
              Text(
                widget.subtitle, // Parametre olarak gelen alt başlık
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 8),
              // Açıklama
              Text(
                widget.description, // Parametre olarak gelen açıklama
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              SizedBox(height: 8),
              // Butonlar
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Bana Hatırlat",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(width: 8),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text("Bilgi", style: TextStyle(fontSize: 12)),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: BorderSide(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              // Ek bilgiler
              Wrap(
                spacing: 4,
                children:
                    widget
                        .genres // Parametre olarak gelen türler
                        .map(
                          (genre) => Text(
                            "$genre -",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        )
                        .toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
