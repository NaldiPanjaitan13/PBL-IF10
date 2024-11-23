import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TambahKonten extends StatefulWidget {
  const TambahKonten({super.key});

  @override
  TambahKontenState createState() => TambahKontenState();
}

class TambahKontenState extends State<TambahKonten> {
  bool showProgress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // Header Setengah Lingkaran
          Container(
            height: 150,
            decoration: const BoxDecoration(
              color: Color(0xFFFFFD55),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(150),
                bottomRight: Radius.circular(150),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back,
                        color: Colors.black, size: 25),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      'Tambah Konten Pelajaran',
                      style: GoogleFonts.poppins(fontSize: 21),
                      overflow: TextOverflow
                          .ellipsis, // Tambahkan overflow untuk memotong teks jika terlalu panjang
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Konten Form
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                child: ListView(
                  children: [
                    // Input Judul Sub Bab
                    Text(
                      'Judul Sub Bab',
                      style: GoogleFonts.poppins(),
                    ),
                    const SizedBox(height: 5),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.blue),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 1),
                        ),
                        labelText: 'Input Judul Sub Bab',
                        labelStyle: GoogleFonts.poppins(),
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Input Materi
                    Text(
                      'Materi',
                      style: GoogleFonts.poppins(),
                    ),
                    const SizedBox(height: 5),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.blue),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 1),
                        ),
                        labelText: 'Input Materi',
                        labelStyle: GoogleFonts.poppins(),
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Input Video
                    Text(
                      'Video',
                      style: GoogleFonts.poppins(),
                    ),
                    const SizedBox(height: 5),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.blue),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 1),
                        ),
                        labelText: 'Input Video',
                        labelStyle: GoogleFonts.poppins(),
                      ),
                    ),
                    const SizedBox(height: 80),
                    // Tombol untuk menyimpan
                    SizedBox(
                      width: double.infinity,
                      height: 70,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                20), // Atur radius sudut di sini
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            showProgress =
                                true; // Tampilkan progress jika diperlukan
                          });
                        },
                        child: Text(
                          "Simpan",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    if (showProgress)
                      const Center(
                          child:
                              CircularProgressIndicator()), // Indikator loading
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}