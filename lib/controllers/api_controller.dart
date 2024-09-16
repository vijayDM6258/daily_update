import 'package:get/get.dart';
import '../helpers/helper.dart';
import '../models/api_model.dart';

class NewsController extends GetxController {
  var isLoading = true.obs;
  var articles = <Article>[].obs;

  @override
  void onInit() {
    fetchNews();
    super.onInit();
  }

  void fetchNews() async {
    try {
      isLoading(true);
      var newsdata = await NewsService().fetchNews();
      articles.value = newsdata;
    } finally {
      isLoading(false);
    }
  }
}
