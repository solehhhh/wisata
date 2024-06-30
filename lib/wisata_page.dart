import 'package:aplikasi_wisata/data/daftar_wisata.dart';
import 'package:aplikasi_wisata/detail_page.dart';
import 'package:flutter/material.dart';

class WisataPage extends StatelessWidget {
  const WisataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Wisata"),
      ),
      body: ListView.builder(
        itemCount: daftarWisata.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: Image.network(
                daftarWisata[index].gambar,
                width: 100,
                fit: BoxFit.cover,
              ),
              title: Text(daftarWisata[index].nama),
              subtitle: Text(daftarWisata[index].lokasi),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(daftarWisata[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
