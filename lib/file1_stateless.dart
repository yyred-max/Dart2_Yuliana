import 'package:flutter/material.dart';

// ---------- Kartu Mahasiswa ----------
class KartuMahasiswa extends StatelessWidget {
  final String nama;
  final String nim;
  final String prodi;

  const KartuMahasiswa({
    super.key,
    required this.nama,
    required this.nim,
    required this.prodi,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        elevation: 4,
        child: ListTile(
          leading: const Icon(Icons.person),
          title: Text(nama),
          subtitle: Text('NIM $nim\n$prodi'),
          isThreeLine: true,
          trailing: const Icon(Icons.info),
        ),
      ),
    );
  }
}

class Latihan1 extends StatelessWidget {
  const Latihan1({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: const Column(
        children: [
          KartuMahasiswa(
            nama: 'Yuliana',
            nim: '3012410066',
            prodi: 'Informatika',
          ),
          KartuMahasiswa(
            nama: 'Salwa Naf',
            nim: '3012410056',
            prodi: 'Informatika',
          ),
          KartuMahasiswa(
            nama: 'Mitchell Baker',
            nim: '3012410068',
            prodi: 'Informatika',
          ),
        ],
      ),
    );
  }
}

// ---------- Halaman Profil ----------
class Latihan3 extends StatelessWidget {
  const Latihan3({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            // Foto: ganti dengan backgroundImage: AssetImage('assets/foto.jpg')
            // setelah menambah aset di pubspec.yaml.
            CircleAvatar(
              radius: 48,
              child: Icon(Icons.person, size: 48),
            ),
            SizedBox(height: 16),
            Text(
              'Yuliana',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text('Informatika · UISI'),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                KotakIkon(icon: Icons.phone),
                KotakIkon(icon: Icons.email),
                KotakIkon(icon: Icons.location_on),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class KotakIkon extends StatelessWidget {
  final IconData icon;

  const KotakIkon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 64,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.teal.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.teal, width: 2),
      ),
      child: Icon(icon, color: Colors.teal),
    );
  }
}