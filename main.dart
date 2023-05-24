import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Pindah Page",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Formulir"),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              //mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Formulir',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 41, 109, 88),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nama Lengkap',
                    hintText: 'Nama',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Prodi',
                    hintText: 'Prodi',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Jurusan',
                    hintText: 'Jurusan',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Fakultas',
                    hintText: 'Fakultas',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Keperluan peminjaman kendaraan',
                    hintText: 'Keperluan peminjaman kendaraan',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text("Jenis Kendaraan"),
             

                Text("Durasi Peminjaman Kendaraan"),
                CheckboxListTile(
                  title: Text('18 Jam'),
                  value: true,
                  onChanged: (value) {},
                ),
                    CheckboxListTile(
                  title: Text('12 Jam'),
                  value: true,
                  onChanged: (value) {},
                ),
                
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Page2();
                        }),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 41, 109, 88),
                    ),
                    child: Text('Kirim Permintaan'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Center(
        child: Container(
          child: Text(
            'Welcome to Page 2!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
