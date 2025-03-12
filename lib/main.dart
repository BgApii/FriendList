import 'package:contact_hub/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, String>> contacts = [
    {
      "image": "assets/images/nugrah.png",
      "name": "Ahmad Nugraha",
      "email": "ahmadnugraha@gmail.com",
      "alamat": "Jl. Karya Bakti No. 1, Medan",
    },
    {
      "image": "assets/images/angga.png",
      "name": "Angga Tirta Aditya",
      "email": "anggatirtaaditya@gmail.com",
      "alamat": "Jl. Karya Bakti No. 2, Medan",
    },
    {
      "image": "assets/images/apri.png",
      "name": "Apri Supandi Pasaribu",
      "email": "aprisupandipasaribu@gmail.com",
      "alamat": "Jl. Karya Bakti No. 3, Medan",
    },
    {
      "image": "assets/images/dendi.png",
      "name": "Dendi Setiawan",
      "email": "dendisetiawan@gmail.com",
      "alamat": "Jl. Karya Bakti No. 4, Medan",
    },
    {
      "image": "assets/images/aca.png",
      "name": "Elfarina fatma Sucitra",
      "email": "elfarinafatmasucitra@gmail.com",
      "alamat": "Jl. Karya Bakti No. 5, Medan",
    },
    {
      "image": "assets/images/habib.png",
      "name": "Hariri Hasnul Habib Rambe",
      "email": "haririhasnulhabibrambe@gmail.com",
      "alamat": "Jl. Karya Bakti No. 6, Medan",
    },
    {
      "image": "assets/images/haziel.png",
      "name": "haziel Wisma Attar",
      "email": "hazielwismaattar@gmail.com",
      "alamat": "Jl. Karya Bakti No. 7, Medan",
    },
    {
      "image": "assets/images/jelita.png",
      "name": "Jelita Aurelia",
      "email": "hendrakurniawan@gmail.com",
      "alamat": "Jl. Karya Bakti No. 8, Medan",
    },
    {
      "image": "assets/images/adli.png",
      "name": "M. Adli Ulhaq",
      "email": "madliulhaq@gmail.com",
      "alamat": "Jl. Karya Bakti No. 9, Medan",
    },
    {
      "image": "assets/images/lukman.png",
      "name": "M. Lukman Hakim",
      "email": "mlukmanhakim@gmail.com",
      "alamat": "Jl. Karya Bakti No. 10, Medan",
    },
    {
      "image": "assets/images/wildan.png",
      "name": "M. Wildan Alif",
      "email": "mwildanalif@gmail.com",
      "alamat": "Jl. Karya Bakti No. 11, Medan",
    },
    {
      "image": "assets/images/zacky.png",
      "name": "Muhammad Zacky",
      "email": "muhammadzacky@gmail.com",
      "alamat": "Jl. Karya Bakti No. 12, Medan",
    },
    {
      "image": "assets/images/ihsan.png",
      "name": "Nazrul Ihsan",
      "email": "nazrulihsan@gmail.com",
      "alamat": "Jl. Karya Bakti No. 13, Medan",
    },
    {
      "image": "assets/images/putri.png",
      "name": "Putri Maharani",
      "email": "hendrakurniawan@gmail.com",
      "alamat": "Jl. Karya Bakti No. 14, Medan",
    },
    {
      "image": "assets/images/rafif.png",
      "name": "Rafif Haqqi fazilla",
      "email": "hendrakurniawan@gmail.com",
      "alamat": "Jl. Karya Bakti No. 15, Medan",
    },
    {
      "image": "assets/images/rani.png",
      "name": "Rani Dwi Sopia",
      "email": "ranidwisopia@gmail.com",
      "alamat": "Jl. Karya Bakti No. 16, Medan",
    },
    {
      "image": "assets/images/allen.png",
      "name": "Riallin Ardiansyah",
      "email": "riallinardiansyah@gmail.com",
      "alamat": "Jl. Karya Bakti No. 17, Medan",
    },
    {
      "image": "assets/images/riken.png",
      "name": "Rikenro Aldifo",
      "email": "rikenroaldifo@gmail.com",
      "alamat": "Jl. Karya Bakti No. 18, Medan",
    },
    {
      "image": "assets/images/zahra.png",
      "name": "Zahra Anisa",
      "email": "zahraanisa@gmail.com",
      "alamat": "Jl. Karya Bakti No. 19, Medan",
    },
    {
      "image": "assets/images/fira.png",
      "name": "Zhafira Ramadhani",
      "email": "zhafiraramadhani@gmail.com",
      "alamat": "Jl. Karya Bakti No. 20, Medan",
    },
  ];

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light, // Mode terang
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark, // Mode gelap
      ),
      themeMode: ThemeMode.system, // Ikuti pengaturan sistem HP
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 8,
                  spreadRadius: 1,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: AppBar(
              centerTitle: true,
              title: Text(
                'Daftar Teman',
                style: GoogleFonts.poppins(fontSize: 20),
              ),
            ),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: ListView(
            children:
                contacts.map((data) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                    child: Builder(
                      builder:
                          (context) => InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (
                                        context,
                                        animation,
                                        secondaryAnimation,
                                      ) => DetailScreen(
                                        image: data['image']!,
                                        name: data['name']!,
                                        email: data['email']!,
                                        alamat: data['alamat']!,
                                      ),
                                  transitionsBuilder: (
                                    context,
                                    animation,
                                    secondaryAnimation,
                                    child,
                                  ) {
                                    return SlideTransition(
                                      position: Tween(
                                        begin: Offset(1.0, 0.0),
                                        end: Offset.zero,
                                      ).animate(animation),
                                      child: child,
                                    );
                                  },
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 16,
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(data['image']!),
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Text(
                                      data['name']!,
                                      style: GoogleFonts.poppins(fontSize: 16),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                    ),
                  );
                }).toList(),
          ),
        ),
      ),
    );
  }
}
