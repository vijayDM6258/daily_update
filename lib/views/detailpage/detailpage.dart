import 'package:flutter/material.dart';
import '../../models/api_model.dart';

class Detailpage extends StatefulWidget {
  final Article article;

  Detailpage({super.key, required this.article});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.article.title.split(" ")[0]}"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: NetworkImage("${widget.article.urlToImage}"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(title: Text("${widget.article.description}")),
            ),
          ),
        ],
      ),
    );
  }
}
