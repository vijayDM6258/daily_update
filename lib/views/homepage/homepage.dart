import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/api_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final NewsController newsController = Get.put(NewsController());

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      drawer: Drawer(),
      appBar: AppBar(
        title: Text(
          'Daily Update',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      body: Obx(() {
        if (newsController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: newsController.articles.length,
            itemBuilder: (context, index) {
              final article = newsController.articles[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        article.urlToImage,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("${article.title}"),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {
                            Get.toNamed('/Detail_Page', arguments: article);
                          },
                          child: Text("Read More"),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        }
      }),
    );
  }
}
