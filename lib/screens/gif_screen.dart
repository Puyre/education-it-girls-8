import 'package:education/data/fetch_helper.dart';
import 'package:flutter/material.dart';

class GifScreen extends StatefulWidget {
  const GifScreen({Key? key}) : super(key: key);

  @override
  State<GifScreen> createState() => _GifScreenState();
}

class _GifScreenState extends State<GifScreen> {
  final FetchHelper fetchHelper = FetchHelper();
  List<String> images = [];

  @override
  void initState() {
    fetchHelper.fetchImages().then((value) {
      setState(() {
        images = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gif"),
      ),
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Image.network(images[index]);
        },
      ),
    );
  }
}
