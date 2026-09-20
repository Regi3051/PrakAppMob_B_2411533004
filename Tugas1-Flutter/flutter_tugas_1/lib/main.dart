import 'package:flutter/material.dart';

//2411533004

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // 1. Scaffold & AppBar: Kerangka dasar dan Header Navigasi
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Katalog Produk IT'),
          backgroundColor: Colors.teal,
          // 2. Icon: Disematkan di AppBar sebagai logo/indikator
          leading: const Icon(Icons.computer, color: Colors.white), 
        ),
        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 3. Image: Menampilkan gambar langsung dari URL internet
              Image.network(
                'https://picsum.photos/300/200', 
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
              
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.check_circle, color: Colors.green, size: 28),
                  SizedBox(width: 8),
                  // 4. Text: Menampilkan label informasi
                  Text(
                    'Sistem Tersedia',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              
              const SizedBox(height: 30),
              
              // 5. ElevatedButton: Tombol aksi utama (menggunakan varian .icon)
              ElevatedButton.icon(
                onPressed: () {
                  print('Tombol Pesan Ditekan!');
                },
                icon: const Icon(Icons.shopping_cart),
                label: const Text('Pesan Sekarang'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}