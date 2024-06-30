import 'package:flutter/material.dart';
import 'package:aplikasi_wisata/data/wisata.dart';

class DetailPage extends StatelessWidget {
  final Wisata wisata;
  const DetailPage(this.wisata, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(wisata.nama),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(wisata.gambar),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      wisata.nama,
                      style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Icon(Icons.date_range),
                          Text(wisata.hariBuka),
                        ],
                      ),
                      Column(
                        children: [
                          const Icon(Icons.access_time),
                          Text("${wisata.jamBuka} - ${wisata.jamTutup}"),
                        ],
                      ),
                      Column(
                        children: [
                          const Icon(Icons.monetization_on_outlined),
                          Text(wisata.harga),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    wisata.deskripsi,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.network(
                    "https://asset.kompas.com/crops/byQ1Wnp-mnbPZAHZH1wpwEdQ0b4=/8x15:991x670/750x500/data/photo/2017/06/16/132383732.jpg",
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    "https://asset-2.tstatic.net/tribunkaltimwiki/foto/bank/images/pantai-cibuaya-berombak-besar.jpg",
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYCG-_4Ve87wGe8sUkPrDNHFdh5SyoZYQxMQ&s",
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    "https://i2.wp.com/travelspromo.com/wp-content/uploads/2023/04/Curug-Sanghyang-Taraje.jpg",
                    width: 200,
                    fit: BoxFit.cover,
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
