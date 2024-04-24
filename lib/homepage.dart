<<<<<<< HEAD
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wallpaper_app/fullscreen.dart';
=======
import 'package:flutter/material.dart';
>>>>>>> origin/master

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
<<<<<<< HEAD
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchapi();
  }

  List images = [];
  int page = 1;
  String api = "AsHJPEVykI1vFwH70U4BWV6CFrxvMFzTmnp5hNRLRMtYZaKlh2yurm1A";

  fetchapi() async {
    await http.get(Uri.parse("https://api.pexels.com/v1/curated?per_page=80"),
        headers: {
          'Authorization':
              'AsHJPEVykI1vFwH70U4BWV6CFrxvMFzTmnp5hNRLRMtYZaKlh2yurm1A'
        }).then((value) {
      Map result = jsonDecode(value.body);
      setState(() {
        images = result['photos'];
      });
    });
  }

  loadmore() async {
    setState(() {
      page = page + 1;
    });
    String url =
        "https://api.pexels.com/v1/curated?per_page=80&page=" + page.toString();
    await http.get(Uri.parse(url), headers: {
      'Authorization':
          'AsHJPEVykI1vFwH70U4BWV6CFrxvMFzTmnp5hNRLRMtYZaKlh2yurm1A'
    }).then((value) {
      Map result = jsonDecode(value.body);
      setState(() {
        images.addAll(result['photos']);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wallpapers",
          style: TextStyle(
            color: Colors.black,
          ),
=======
  String api= "AsHJPEVykI1vFwH70U4BWV6CFrxvMFzTmnp5hNRLRMtYZaKlh2yurm1A";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(
          "Wallpapers", style: TextStyle(
          color: Colors.black,
        ),
>>>>>>> origin/master
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
<<<<<<< HEAD
          Expanded(
            child: GridView.builder(
              itemCount: images.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  childAspectRatio: 2 / 3,
                  mainAxisSpacing: 2),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FullScreen(
                          imageurl: images[index]['src']['large2x'],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    color: Colors.black,
                    child: Image.network(images[index]['src']['tiny'], fit: BoxFit.cover,),
                  ),
                );
              },
            ),
          ),

          InkWell(
            onTap: loadmore,
            child: Container(
              height: 60,
              width: double.infinity,
              color: Colors.black,
              child: Center(
                child: Text(
                  "Load More",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
=======
          Expanded(child: Container(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 2,childAspectRatio: 2/3,mainAxisSpacing: 2), itemBuilder: (context,index){
              return Container(
                color: Colors.black,
              );
            }),

          ),),
          Container(
            width: double.infinity,
            color: Colors.black,
            child: Center(
              child: Text(
                "Load More",
                style: TextStyle(
                    color: Colors.white,fontSize: 24),
>>>>>>> origin/master
              ),
            ),
          ),
        ],
      ),
    );
  }
}
